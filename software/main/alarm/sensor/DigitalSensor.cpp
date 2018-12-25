#include "DigitalSensor.h"
#include "alarm/config_constants.h"

namespace g3
{
    namespace alarm
    {
        DigitalSensor::DigitalSensor(AlarmConfig& config, int num)
            : BaseSensor(config, 'd', num)
        {            
            config_value = get_settings();
        }

        bool DigitalSensor::is_triggered()
        {
            return has_value 
                && is_enabled()
                && last.get_value() != config_value.get_bool(ARMED_STATE);
        }

        void DigitalSensor::update(const DigitalValue& value)
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
    }
}