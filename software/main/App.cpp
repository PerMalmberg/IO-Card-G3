#include "App.h"

#include <memory>
#include <atomic>
#include <driver/gpio.h>
#include <smooth/core/filesystem/MMCSDCard.h>
#include <smooth/core/filesystem/SPISDCard.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/network/Wifi.h>
#include "I2CSetOutputCmd.h"
#include "wifi-creds.h"
#include "I2CTask.h"
#include "led_pin_output_number.h"

using namespace std::chrono;
using namespace smooth::core::filesystem;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::network;
using namespace smooth::core::sntp;
using namespace smooth::core::timer;

namespace g3
{
    App::App()
            : Application(5, std::chrono::seconds{1}),
              digital_status_queue("io_status_queue", 8, *this, *this),
              sntp_queue("sntp_queue", 1, *this, *this),
              network_status("network_status", 2, *this, *this),
              sntp_timer(Timer::create("sntp", 1, sntp_queue, true, seconds{10}))
    {
    }

    void App::init()
    {
        Application::init();

        // Initialize I2C
        i2c = std::make_unique<I2CTask>();
        i2c->start();

        // Start Wiegand

        // Start alarm worker
    }

    void App::tick()
    {
        if(mqtt)
        {
            mqtt->tick();
        }
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
                    read_device_id();

                    auto& wifi = get_wifi();
                    wifi.set_host_name(device_id);
                    wifi.set_auto_connect(true);
                    wifi.set_ap_credentials(WIFI_SSID, WIFI_PASSWORD);
                    wifi.connect_to_ap();

                    sntp_timer->start();
                }
                else
                {
                    sd_card.reset();
                }
            }
        }
    }

    void App::event(const smooth::core::timer::TimerExpiredEvent& ev)
    {
        if (ev.get_id() == sntp_timer->get_id())
        {
            if (!sntp)
            {
                Log::info(name, "Starting SNTP");
                // TODO: Read SNTP servers from disk
                const std::vector<std::string> servers{"pool.ntp.org"};
                sntp = std::make_unique<Sntp>(servers);
                sntp->start();
            }
            else if (sntp->is_time_set())
            {
                auto t = system_clock::to_time_t(system_clock::now());
                tm time{};
                localtime_r(&t, &time);
                Log::info(name, Format("Time set: {1}", Str(asctime(&time))));
                Publisher<I2CSetOutputBit>::publish(
                        I2CSetOutputBit{I2CDevice::status, SNTP_TIME_SET, sntp->is_time_set()});
                sntp_timer->stop();
            }
            else
            {
                Log::info(name, "Waiting for time to be set");
            }
        }
    }

    void App::event(const smooth::core::network::NetworkStatus& ev)
    {
        bool connected = ev.get_event() == NetworkEvent::GOT_IP;
        Log::info(name, Format("Network connected: {1}", Bool(connected)));
        Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, WIFI_CONNECTED, connected});

        if(connected)
        {
            start_mqtt();
        }
    }

    void App::read_device_id()
    {
        JsonFile f{"/sdcard/dev_id.cfg"};
        auto& v = f.value();

        device_id = v["device_id"].get_string("");

        if(device_id.empty())
        {
            // No device id set in config, create a random id.
            std::random_device rd;
            std::mt19937 gen(rd());
            std::uniform_int_distribution<> dis(0x0, 0xF);

            std::stringstream ss;
            for(int i = 0; i < 10; ++i)
            {
                ss << std::setfill('0') << std::setw(2) << std::hex << dis(gen);
            }

            device_id = ss.str();

            v["device_id"] = device_id;
            f.save();
        }

        Log::info(name, Format("Device id: {1}", Str(device_id)));
    }

    void App::start_mqtt()
    {
        if(!mqtt)
        {
            mqtt = std::make_unique<Mqtt>(device_id, *this);
        }
    }
}