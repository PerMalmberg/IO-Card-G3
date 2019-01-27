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
                    silence_alarm();
                }
                else if(steady_clock::now() > times_out_at_silence)
                {
                    alarm.set_state(new(alarm) Armed(alarm));
                }
            }

            void Triggered::enter_state()
            {
                sound_alarm();
            }

            void Triggered::leave_state()
            {
                silence_alarm();
            }
        }
    }
}
