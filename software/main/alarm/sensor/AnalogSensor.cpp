#include "AnalogSensor.h"

namespace g3
{
    namespace alarm
    {
        AnalogSensor::AnalogSensor(AlarmConfig& config, int num)
            : BaseSensor(config, 'a', num)
        {
            config_value = get_settings();                        
        }

        bool AnalogSensor::is_triggered()
        {
            return has_value 
                && is_enabled()
                && !is_within_limits(last.get_value());
        }

        void AnalogSensor::update(const AnalogValue& value)
        {
            last = value;
            update_age();
            has_value = true;

            if(is_triggered())
            {
                signal_triggered();
            }
            else
            {
                signal_restored();
            }
        }

        bool AnalogSensor::is_within_limits(uint32_t value)
        {
            auto min = config_value["allowed_range"]["min"].get_int(0);
            auto max = config_value["allowed_range"]["max"].get_int(std::numeric_limits<uint32_t>::max());

            return value >= min && value <= max;
        }
    }
}