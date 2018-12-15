#include "App.h"

#include <driver/gpio.h>
#include <smooth/core/filesystem/MMCSDCard.h>
#include <smooth/core/filesystem/SPISDCard.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/network/Wifi.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "io/I2CTask.h"
#include "io/led_pin_output_number.h"

using namespace std::chrono;
using namespace smooth::core::filesystem;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::network;
using namespace smooth::core::timer;

namespace g3
{
    App::App()
            : Application(5, std::chrono::seconds{10}),
              digital_status_queue("io_status_queue", 8, *this, *this),              
              network_status("network_status", 2, *this, *this),
              i2c(),
              id(),
              sntp(*this),
              wifi(*this, id, sntp)
    {
    }

    void App::init()
    {
        Application::init();

        i2c.start();

        // Start Wiegand

        // Start alarm worker
    }

    void App::tick()
    {
        auto free = heap_caps_get_free_size(MALLOC_CAP_8BIT);
        auto max_size = heap_caps_get_largest_free_block(MALLOC_CAP_8BIT);

        Log::info(name, Format("Free heap: {1} bytes, max block: {2}", UInt32(free), UInt32(max_size)));
    }

    void App::event(const DigitalStatusValue& event)
    {
        if (event.get_name() == "s7")
        {
            if (!sd_card)
            {
                // Using Wrover-B module so must enable pullup on strapping pin GPIO12.
                if (gpio_pullup_en(GPIO_NUM_12) != ESP_OK)
                {
                    Log::error(name, "Failed to enable pull-up on GPIO12");
                }

                // We now know the state of the SD Card mode selection switch.
                // Cycle power to SD Card to ensure it can be initialized in whatever the selected mode is.
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SD_CARD_POWER_CTRL, false});
                std::this_thread::sleep_for(seconds{1});
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SD_CARD_POWER_CTRL, true});
                std::this_thread::sleep_for(seconds{1});

                use_sd_spi = event.get_value();
                Log::info(name, Format("Using SPI for SD Card: {1}", Bool(use_sd_spi)));

                if (use_sd_spi)
                {
                    sd_card = std::make_unique<SPISDCard>(GPIO_NUM_19,
                                                          GPIO_NUM_22,
                                                          GPIO_NUM_18,
                                                          GPIO_NUM_5,
                                                          GPIO_NUM_21);
                }
                else
                {
                    sd_card = std::make_unique<MMCSDCard>(GPIO_NUM_15,
                                                          GPIO_NUM_2,
                                                          GPIO_NUM_26,
                                                          GPIO_NUM_12,
                                                          GPIO_NUM_13,
                                                          false);
                }

                auto res = sd_card->init("/sdcard", false, 5);
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SD_CARD_INIT_OK, res});

                if (res)
                {
                    store_default_config();
                    wifi.start();
                    
                }
                else
                {
                    sd_card.reset();
                }
            }
        }
    }

    void App::event(const smooth::core::network::NetworkStatus& ev)
    {
        bool connected = ev.get_event() == NetworkEvent::GOT_IP;
        Log::info(name, Format("Network connected: {1}", Bool(connected)));
        Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, WIFI_CONNECTED, connected});

        if (connected)
        {
            start_mqtt();
        }
    }

    void App::start_mqtt()
    {
        if (!mqtt)
        {
            mqtt = std::make_unique<Mqtt>(id.get(), *this);
            mqtt->start();
        }
    }

    void App::store_default_config() const
    {
        id.write_default();
        sntp.write_default();
        wifi.write_default();
        Mqtt::write_default();
    }
}