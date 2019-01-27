#include "Idle.h"
#include <chrono>
#include <smooth/core/logging/log.h>
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
                    if(alarm.are_any_sensors_triggered())
                    {
                        Log::info(name, "At least one sensors is triggered, cannot arm.");
                        // TODO: Play error tune
                    }
                    else if(!alarm.do_sensors_have_values())
                    {
                        Log::info(name, "Not all sensors have values yet, cannot arm.");
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
                silence_alarm();
            }
        }
    }
}
