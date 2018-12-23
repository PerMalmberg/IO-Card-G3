#pragma once

#include "BaseState.h"
#include <chrono>
#include "alarm/Alarm.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class Triggered : public BaseState
            {
                public:
                    Triggered(Alarm& alarm)
                        :   BaseState(alarm, "Triggered"),
                            times_out_at(std::chrono::steady_clock::now() + alarm.get_triggered_timeout()),
                            times_out_at_silence(std::chrono::steady_clock::now() + alarm.get_triggered_silence_timeout())
                        {                            
                        }

                    void code_entered(const std::string& code) override;
                    void enter_state() override;
                    void leave_state() override;
                    void tick() override;

                private:
                    const std::chrono::steady_clock::time_point times_out_at;
                    const std::chrono::steady_clock::time_point times_out_at_silence;
            };
        }
    }
}
