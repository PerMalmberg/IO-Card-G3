#include "EntryDelay.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void Triggered::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }
            }
        }
    }
}
