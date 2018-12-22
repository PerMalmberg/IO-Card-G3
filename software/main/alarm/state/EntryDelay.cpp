#include "EntryDelay.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Triggered.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void EntryDelay::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }                
            }

            void EntryDelay::enter_state()
            {
                alarm.start_entry_timer();
            }

            void EntryDelay::leave_state()
            {
                alarm.stop_entry_timer();
            }

            void EntryDelay::entry_timer_timeout()
            {
                alarm.set_state(new(alarm) Triggered(alarm));
            }
        }
    }
}
