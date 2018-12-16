
#include "Alarm.h"
#include "state/Idle.h"

namespace g3
{
    namespace alarm
    {
        Alarm::Alarm()
        {
            //set_state<Idle>();
            set_state(new(*this) state::Idle(*this));
        }
    }
}
