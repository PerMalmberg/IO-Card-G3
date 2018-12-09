#pragma once

#include <memory>
#include <smooth/core/Application.h>
#include <smooth/core/ipc/IEventListener.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/filesystem/SDCard.h>
#include <smooth/core/sntp/Sntp.h>
#include <smooth/core/network/NetworkStatus.h>
#include "DigitalStatusValue.h"
#include "I2CTask.h"

namespace g3
{
    class App : public smooth::core::Application,
                smooth::core::ipc::IEventListener<DigitalStatusValue>,
                smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>,
                smooth::core::ipc::IEventListener<smooth::core::network::NetworkStatus>
    {
        public:
            App();

            void init() override;

            void tick() override;

            void event(const DigitalStatusValue& event) override;

            void event(const smooth::core::timer::TimerExpiredEvent& ev) override;

            void event(const smooth::core::network::NetworkStatus& ev) override;

        private:
            void read_device_id();

            smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusValue> digital_status_queue;
            smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent> sntp_queue;
            smooth::core::ipc::TaskEventQueue<smooth::core::network::NetworkStatus> network_status;

            std::unique_ptr<I2CTask> i2c{};
            bool use_sd_spi{false};
            std::shared_ptr<smooth::core::timer::Timer> sntp_timer{};
            std::unique_ptr<smooth::core::filesystem::SDCard> sd_card{};
            std::unique_ptr<smooth::core::sntp::Sntp> sntp{};
            std::string device_id{"Not yet initialized"};
    };

}