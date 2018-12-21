
#include "Alarm.h"
#include "state/Idle.h"
#include "hardware_info.h"

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
            analog_sensors.reserve(ANALOG_INPUT_COUNT);
            digital_sensors.reserve(DIGITAL_INPUT_COUNT);
        }

        void Alarm::event(const AnalogValue& value)
        {
            update_sensor(analog_sensors, value);
        }

        void Alarm::event(const DigitalValue& value)
        {
            update_sensor(digital_sensors, value);
        }

        void Alarm::start()
        {
            // Load config again incase the default one was just written to disk
            cfg.load();

            analog_sensors.clear();

            for(int i = 0; i < ANALOG_INPUT_COUNT; ++i)
            {
                analog_sensors.emplace_back(AnalogSensor{cfg, i});
            }

            digital_sensors.clear();

            for(int i = 0; i < DIGITAL_INPUT_COUNT; ++i)
            {
                digital_sensors.emplace_back(DigitalSensor{cfg, i});
            }
            
            started = true;
        }
    }
}
