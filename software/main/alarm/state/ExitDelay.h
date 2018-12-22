#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class ExitDelay : public BaseState
            {
                public:
                    ExitDelay(Alarm& alarm)
                        : BaseState(alarm, "ExitDelay")
                        {                            
                        }

                    void enter_state() override;
                    
                    void leave_state() override;

                    void exit_timer_timeout() override;

                    void code_entered(const std::string& code) override;
            };
        }
    }
}
