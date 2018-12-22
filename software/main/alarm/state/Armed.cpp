#include "Armed.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Triggered.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void Armed::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }                
                else
                {
                    alarm.set_state(new(alarm) Triggered(alarm));
                }
                
            }
        }
    }
}
