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
            void Idle::code_entered()
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
    }
}
