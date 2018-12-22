#include "Idle.h"
#include <chrono>
#include "alarm/Alarm.h"
#include "alarm/state/ExitDelay.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void Idle::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    if(alarm.are_any_sensors_triggered(seconds{0}))
                    {
                        // TODO: Play error tune
                    }
                    else
                    {
                        alarm.set_state(new(alarm) ExitDelay(alarm));
                    }
                }
            }

            void Idle::enter_state()
            {
                // TODO: Silence all alarms.            
            }
        }
    }
}
