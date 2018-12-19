
#include "Alarm.h"
#include "state/Idle.h"

namespace g3
{
    namespace alarm
    {
        Alarm::Alarm(smooth::core::Task& task)
            :   task(task),
                analog_value("analog2alarm", 10, task, *this),
                digital_value("ditigal2alarm", 10, task, *this)
        {            
            set_state(new(*this) state::Idle(*this));
        }

        void Alarm::event(const AnalogValue& value)
        {
            if(started)
            {

            }
        }

        void Alarm::event(const DigitalValue& value)
        {
            if(started)
            {
                
            }
        }
    }
}
