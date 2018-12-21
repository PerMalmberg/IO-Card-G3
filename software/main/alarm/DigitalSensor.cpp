#include "DigitalSensor.h"

namespace g3
{
    namespace alarm
    {
        DigitalSensor::DigitalSensor(g3::AlarmConfig& config, int num)
            : BaseSensor(config, num)
        {            
            config_value = get_settings();
        }

        bool DigitalSensor::is_triggered()
        {
            return initialized && last.get_value() != config_value.get_bool("armed_state");
        }

        void DigitalSensor::update(const DigitalValue& value)
        {
            last = value;
            initialized = true;
        }

        void DigitalSensor::tick()
        {
            
        }
    }
}