#pragma once

#include "BaseState.h"
#include "alarm/event/SensorTriggered.h"
#include <chrono>

namespace g3::alarm::state
{
    class ExitDelay : public BaseState
    {
        public:
            ExitDelay(Alarm& alarm)
                : BaseState(alarm, "ExitDelay"),
                    exit_start(std::chrono::steady_clock::now())
                {
                }

            void tick() override;
            void enter_state() override;

            void code_entered(const std::string& code) override;
            void sensor_triggered(const event::SensorTriggered& sensor) override;

            bool is_armed() const override { return true; }

        private:
            std::chrono::steady_clock::time_point exit_start;
    };
}
