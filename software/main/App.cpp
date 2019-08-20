#include "App.h"

#include <smooth/core/task_priorities.h>
#include <smooth/core/filesystem/MMCSDCard.h>
#include <smooth/core/filesystem/SPISDCard.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/network/Wifi.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "io/I2CTask.h"
#include "hardware_info.h"
#include "alarm/event/CodeEntered.h"
#include "sound/PlaySong.h"
#include "commands.h"
#include <smooth/core/SystemStatistics.h>
#include "http/WSDataConnection.h"

using namespace std::chrono;
using namespace smooth::core;
using namespace smooth::core::filesystem;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::network;
using namespace smooth::core::timer;
using namespace smooth::application::network::http;

namespace g3
{
    App::App()
            : Application(smooth::core::APPLICATION_BASE_PRIO, std::chrono::seconds{10}),
              digital_status_queue(DigitalStatusQueue::create("io_status_queue", 8, *this, *this)),
              network_status(NetworkStatusQueue::create("network_status", 2, *this, *this)),
              data_retriever(),
              i2c(),
              id(),
              sntp(*this),
              wifi(*this, id, sntp),
              alarm(*this),
              keypad(*this, cmd, id)
    {
    }

    void App::init()
    {
        Application::init();

        i2c.start();
    }

    void App::tick()
    {
        SystemStatistics::instance().dump();

        if (mqtt)
        {
            Publisher<I2CSetOutputBit>::publish(
                    I2CSetOutputBit{I2CDevice::status, MQTT_CONNECTED, mqtt->is_connected()});
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

                auto res = sd_card->init(SDCardMount::instance(), false, 5);
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SD_CARD_INIT_OK, res});

                if (res)
                {
                    player = std::make_unique<sound::Player>(*this);

                    // On first start, this will load the just written default config so make sure it is after the call to store_default_config()
                    prepare_config();

                    alarm.start();

                    wifi.start();

                    insecure_server = std::make_unique<InsecureServer>(*this,
                                                                       HTTPServerConfig{"/sdcard/web_root",
                                                                                        {"index.html"},
                                                                                        {".html"},
                                                                                        data_retriever,
                                                                                        4096,
                                                                                        4096});

                    insecure_server->start(6, 1, std::make_shared<IPv4>("0.0.0.0", 80));
                    insecure_server->enable_websocket_on<http::WSDataConnection>("/data");
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
            mqtt = std::make_unique<Mqtt>(id.get(), *this, cmd);

            // Setup subscriptions
            for (auto i = 0; i < 8; ++i)
            {
                auto topic = id.get();
                topic += cmd_io_set;
                topic += std::to_string(i);

                mqtt->add_subscription(topic);

                cmd.add_command(topic, [this](const std::string& command, const std::string& data) {
                    // Expected topic: <id>/io/set/<num>
                    // Expected payload: { "value": true }

                    // Get the number from the topic, only one character expected.
                    if (command.size() > 2 && command[command.length() - 2] == '/')
                    {
                        std::string last_char{command[command.length() - 1]};
                        smooth::core::json::Value d{data};

                        auto val = d["value"].get_bool(false);
                        alarm.set_output(last_char, val);
                    }
                });

                auto command = id.get() + cmd_keypad_code_entered;
                mqtt->add_subscription(command);
                cmd.add_command(command, [this](const std::string& command, const std::string& data) {
                    // Expected payload: { "code": "1234" }
                    smooth::core::json::Value d{data};
                    auto code = d["code"].get_string("");
                    if (!code.empty())
                    {
                        Publisher<g3::alarm::event::CodeEntered>::publish(g3::alarm::event::CodeEntered(code));
                    }
                });

                command = id.get() + cmd_play_song;
                mqtt->add_subscription(command);
                cmd.add_command(command, [this](const std::string& command, const std::string& data) {
                    smooth::core::json::Value d{data};
                    Publisher<sound::PlaySong>::publish(sound::PlaySong(d["name"].get_string("")));
                });

            }

            mqtt->start();
        }
    }

    void App::prepare_config()
    {
        id.write_default();
        sntp.write_default();
        wifi.write_default();
        Mqtt::write_default();
        alarm.write_default();
    }
}
