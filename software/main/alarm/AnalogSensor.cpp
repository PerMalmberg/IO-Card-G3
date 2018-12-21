#include "AnalogSensor.h"

namespace g3
{
    namespace alarm
    {
        AnalogSensor::AnalogSensor(g3::AlarmConfig& config, int num)
            : BaseSensor(config, num)
        {
            config_value = get_settings();                        
        }

        bool AnalogSensor::is_triggered()
        {
            return initialized && !is_within_limits(last.get_value());
        }

        void AnalogSensor::update(const AnalogValue& value)
        {
            last = value;
            initialized = true;
        }

        void AnalogSensor::tick()
        {
            
        }

        bool AnalogSensor::is_within_limits(uint32_t value)
        {
            auto min = config_value["allowed_range"]["min"].get_int(0);
            auto max = config_value["allowed_range"]["max"].get_int(std::numeric_limits<uint32_t>::max());

            return value >= min && value <= max;
        }
    }
}