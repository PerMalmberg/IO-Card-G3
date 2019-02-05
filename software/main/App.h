#pragma once

#include <memory>
#include <smooth/core/Application.h>
#include <smooth/core/ipc/IEventListener.h>
#include <smooth/core/timer/Timer.h>
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
#include <smooth/application/io/wiegand/Wiegand.h>
#include <smooth/application/io/wiegand/IWiegandSignal.h>

namespace g3
{
    class App : public smooth::core::Application,
                smooth::core::ipc::IEventListener<DigitalStatusValue>,
                smooth::core::ipc::IEventListener<smooth::core::network::NetworkStatus>,
                public smooth::application::io::wiegand::IWiegandSignal
    {
        public:
            App();

            void init() override;

            void tick() override;

            void event(const DigitalStatusValue& event) override;

            void event(const smooth::core::network::NetworkStatus& ev) override;

            void wiegand_number(uint8_t num) override;
            void wiegand_id(uint32_t id, uint8_t byte_count) override;

        private:
            void start_mqtt();
            void prepare_config();
            bool use_sd_spi{false};
            std::unique_ptr<smooth::core::filesystem::SDCard> sd_card{};
            std::unique_ptr<Mqtt> mqtt{};
            std::shared_ptr<smooth::application::io::wiegand::Wiegand> wiegand{};

            smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusValue> digital_status_queue;
            smooth::core::ipc::SubscribingTaskEventQueue<smooth::core::network::NetworkStatus> network_status;
            I2CTask i2c;
            g3::DeviceId id;
            g3::network::Sntp sntp;
            g3::network::Wifi wifi;
            g3::alarm::Alarm alarm;
            g3::CommandDispatcher cmd{};
    };

}