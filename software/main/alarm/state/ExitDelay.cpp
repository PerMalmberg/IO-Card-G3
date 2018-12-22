#include "ExitDelay.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Armed.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void ExitDelay::enter_state()
            {
                alarm.start_exit_timer();
            }

            void ExitDelay::leave_state()
            {
                alarm.stop_exit_timer();
            }

            void ExitDelay::exit_timer_timeout()
            {
                alarm.set_state(new(alarm) Armed(alarm));
            }

            void ExitDelay::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }
            }
        }
    }
}
