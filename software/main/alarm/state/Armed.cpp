#include "Armed.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Triggered.h"
#include "alarm/state/EntryDelay.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void Armed::enter_state()
            {
            }
            
            void Armed::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }                
                else
                {
                    // Wrong code entered without first triggering the entry delay, trigger the alarm immediately.
                    alarm.set_state(new(alarm) Triggered(alarm));
                }                
            }

            void Armed::sensor_triggered(const event::SensorTriggered& sensor)
            {
                if(sensor.get_entry_delay() > seconds{0})
                {
                    // Sensor has delay, start entry delay
                    alarm.set_state(new(alarm) EntryDelay(alarm, steady_clock::now() + sensor.get_entry_delay()));
                }
                else
                {
                    // No delay, immediate alarm
                    alarm.set_state(new(alarm) Triggered(alarm));
                }
            }
        }
    }
}
