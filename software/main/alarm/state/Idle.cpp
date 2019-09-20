#include "Idle.h"
#include <chrono>
#include <smooth/core/logging/log.h>
#include "alarm/Alarm.h"
#include "alarm/state/ExitDelay.h"
#include "sound/PlaySong.h"
#include <smooth/core/ipc/Publisher.h>

using namespace std::chrono;
using namespace smooth::core::ipc;

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
                        Publisher<sound::PlaySong>::publish(sound::PlaySong("error"));
                    }
                    else if(!alarm.do_sensors_have_values())
                    {
                        Log::info(name, "Not all sensors have values yet, cannot arm.");
                        Publisher<sound::PlaySong>::publish(sound::PlaySong("error"));
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
                Publisher<sound::PlaySong>::publish(sound::PlaySong("disarmed"));
            }
        }
    }
}
