#include "Armed.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void Armed::code_entered()
            {
                alarm.set_state(new(alarm) Idle(alarm));
            }
        }
    }
}
