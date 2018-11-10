#pragma once

#include <memory>
#include <smooth/core/Application.h>
#include <smooth/core/ipc/IEventListener.h>
#include "DigitalStatusValue.h"
#include "I2CTask.h"

namespace g3
{
    class App : public smooth::core::Application,
                smooth::core::ipc::IEventListener<DigitalStatusValue>
    {
        public:
            App();

            void init() override;

            void tick() override;

            void event(const DigitalStatusValue& event) override;

        private:
            smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusValue> digital_status_queue;
            std::unique_ptr<I2CTask> i2c{};
            bool use_sd_spi{false};
    };

}