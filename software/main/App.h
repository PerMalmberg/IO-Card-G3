#pragma once

#include <memory>
#include <smooth/core/Application.h>
#include <smooth/core/ipc/IEventListener.h>
#include <smooth/core/filesystem/SDCard.h>
#include <smooth/core/network/NetworkStatus.h>
#include "DeviceId.h"
#include "CommandDispatcher.h"
#include "alarm/Alarm.h"
#include "io/digital//DigitalStatusValue.h"
#include "io/I2CTask.h"
#include "network/Mqtt.h"
#include "network/Sntp.h"
#include "network/Wifi.h"
#include "keypad/keypad.h"
#include "sound/Player.h"
#include <smooth/application/network/http/HTTPServer.h>
#include <smooth/core/network/ServerSocket.h>
#include "http/TemplateDataRetriever.h"

namespace g3
{
    class App : public smooth::core::Application,
                smooth::core::ipc::IEventListener<DigitalStatusValue>,
                smooth::core::ipc::IEventListener<smooth::core::network::NetworkStatus>                
    {
        public:
            App();

            void init() override;

            void tick() override;

            void event(const DigitalStatusValue& event) override;

            void event(const smooth::core::network::NetworkStatus& ev) override;            
        private:
            void start_mqtt();
            void prepare_config();
            
            bool use_sd_spi{false};
            std::unique_ptr<smooth::core::filesystem::SDCard> sd_card{};
            std::unique_ptr<Mqtt> mqtt{};            
            g3::CommandDispatcher cmd{};

            using DigitalStatusQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusValue>;
            using NetworkStatusQueue = smooth::core::ipc::SubscribingTaskEventQueue<smooth::core::network::NetworkStatus>;

            std::shared_ptr<DigitalStatusQueue> digital_status_queue;
            std::shared_ptr<NetworkStatusQueue> network_status;
            std::unique_ptr<sound::Player> player{};

            std::shared_ptr<http::DataRetriever> data_retriever{};
            std::unique_ptr<smooth::application::network::http::InsecureServer> insecure_server{};

            I2CTask i2c;
            g3::DeviceId id;
            g3::network::Sntp sntp;
            g3::network::Wifi wifi;
            g3::alarm::Alarm alarm;
            g3::keypad::Keypad keypad;

#ifdef ESP_PLATFORM
            const int http_port = 80;
#else
            const int http_port = 8080;
#endif
    };

}