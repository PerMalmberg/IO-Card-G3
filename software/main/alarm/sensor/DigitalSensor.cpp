#include "DigitalSensor.h"
#include "alarm/config_constants.h"

namespace g3
{
    namespace alarm
    {
        DigitalSensor::DigitalSensor(AlarmConfig& config, int num)
            : BaseSensor(config, num)
        {            
            config_value = get_settings();
        }

        bool DigitalSensor::is_triggered(const std::chrono::seconds& time_since_triggered, bool is_armed)
        {
            return initialized 
                && is_enabled()
                && (is_armed ? time_since_triggered > get_entry_delay() : time_since_triggered > get_exit_delay())
                && last.get_value() != config_value.get_bool(ARMED_STATE);
        }

        void DigitalSensor::update(const DigitalValue& value)
        {
            last = value;
            update_age();
            initialized = true;
        }
    }
}