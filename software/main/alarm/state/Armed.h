#pragma once

#include "BaseState.h"

namespace g3::alarm::state
{
    class Armed : public BaseState
    {
        public:
            Armed(Alarm& alarm)
                : BaseState(alarm, "Armed")
                {
                }

            void enter_state() override;

            void code_entered(const std::string& code) override;

            void sensor_triggered(const event::SensorTriggered& sensor) override;

            bool is_armed() const { return true; }
    };
}
