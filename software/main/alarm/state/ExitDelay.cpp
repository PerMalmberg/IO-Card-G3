#include "ExitDelay.h"
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Armed.h"
#include "alarm/state/Triggered.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            void ExitDelay::tick()
            {
                // Wait for the maximum delay specified among the sensors.
                auto time_since_start = duration_cast<seconds>(steady_clock::now() - exit_start);
                if(time_since_start > alarm.get_max_exit_delay())
                {
                    alarm.set_state(new(alarm) Armed(alarm));
                }
            }

            void ExitDelay::code_entered(const std::string& code)
            {
                if(alarm.validate_code(code))
                {
                    alarm.set_state(new(alarm) Idle(alarm));
                }
            }

            void ExitDelay::sensor_triggered(const event::SensorTriggered& sensor)
            {
                auto exit_delay = sensor.get_exit_delay();
                if(exit_delay > seconds{0})
                {
                    auto time_since_start = duration_cast<seconds>(steady_clock::now() - exit_start);
                    if(time_since_start > exit_delay)
                    {
                        alarm.set_state(new(alarm) Triggered(alarm));
                    }
                }
                else
                {
                    // Immediate alarm
                    alarm.set_state(new(alarm) Triggered(alarm));
                }
            }
        }
    }
}
