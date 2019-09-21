#pragma once

#include <smooth/core/logging/log.h>
#include <alarm/event/SensorTriggered.h>

namespace g3
{
    namespace alarm
    {
        class Alarm;

        namespace state
        {
            class BaseState
            {
                public:
                    BaseState(Alarm& alarm, const char* name);

                    virtual void enter_state() {}
                    virtual void leave_state() {}

                    virtual void code_entered(const std::string& code) {}
                    virtual void tick() {}
                    virtual void sensor_triggered(const event::SensorTriggered& sensor) {};

                    [[nodiscard]] virtual bool is_armed() const { return false; }

                    [[nodiscard]] const std::string& get_state_name() const { return name; }

                protected:
                    void silence_alarm();
                    void sound_alarm();

                    g3::alarm::Alarm& alarm;
                    std::string name;
            };
        }
    }
}
