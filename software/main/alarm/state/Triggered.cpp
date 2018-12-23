#include "Triggered.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Armed.h"

using namespace std::chrono;

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

            void Triggered::tick()
            {
                if(steady_clock::now() > times_out_at)
                {
                    // TODO: Silence alarm
                }
                else if(steady_clock::now() > times_out_at_silence)
                {
                    alarm.set_state(new(alarm) Armed(alarm));
                }
            }

            void Triggered::enter_state()
            {
                // TODO: Sound the alarm
            }

            void Triggered::leave_state()
            {
                // TODO: Silence the alarm
            }
        }
    }
}
