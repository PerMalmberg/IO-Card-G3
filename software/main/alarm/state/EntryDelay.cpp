#include "EntryDelay.h"
#include <smooth/core/ipc/Publisher.h>
#include "alarm/Alarm.h"
#include "alarm/state/Idle.h"
#include "alarm/state/Triggered.h"
#include "sound/PlaySong.h"

using namespace std::chrono;
using namespace smooth::core::ipc;

namespace g3::alarm::state
{
    void EntryDelay::enter_state()
    {
         Publisher<sound::PlaySong>::publish(sound::PlaySong("entry_delay"));
    }

    void EntryDelay::code_entered(const std::string& code)
    {
        if(alarm.validate_code(code))
        {
            alarm.set_state(new(alarm) Idle(alarm));
        }
    }

    void EntryDelay::tick()
    {
        if (steady_clock::now() > expires_at)
        {
            alarm.set_state(new(alarm) Triggered(alarm));
        }
    }

    void EntryDelay::sensor_triggered(const event::SensorTriggered& sensor)
    {
        // The first delayed sensor to trigger is the one that 'rule', i.e. additional
        // triggered delayed sensors are ignored for the duration of the first delay.
        // Non-delayed sensors are still considered, however.
        if(sensor.get_entry_delay() <= seconds{0})
        {
            // No delay, immediate alarm
            alarm.set_state(new(alarm) Triggered(alarm));
        }
    }
}
