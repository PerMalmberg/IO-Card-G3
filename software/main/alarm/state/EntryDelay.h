#pragma once

#include "BaseState.h"
#include <chrono>

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class EntryDelay : public BaseState
            {
                public:
                    EntryDelay(Alarm& alarm, const std::chrono::steady_clock::time_point& expires_at)
                        : BaseState(alarm, "EntryDelay"), expires_at(expires_at)
                        {                            
                        }

                    void tick() override;
                    void enter_state() override;

                    void sensor_triggered(const event::SensorTriggered& sensor) override;

                     [[nodiscard]] bool is_armed() const override { return true; }

                    void code_entered(const std::string& code) override;
                private:
                    const std::chrono::steady_clock::time_point expires_at;
            };
        }
    }
}
