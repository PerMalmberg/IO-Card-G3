#include "AnalogSensor.h"

namespace g3
{
    namespace alarm
    {
        AnalogSensor::AnalogSensor(AlarmConfig& config, int num)
            : BaseSensor(config, num)
        {
            config_value = get_settings();                        
        }

        bool AnalogSensor::is_triggered(const std::chrono::seconds& time_since_triggered, bool is_armed)
        {
            return initialized 
                && is_enabled()
                && (is_armed ? time_since_triggered > get_entry_delay() : time_since_triggered > get_exit_delay())
                && !is_within_limits(last.get_value());
        }

        void AnalogSensor::update(const AnalogValue& value)
        {
            last = value;
            update_age();
            initialized = true;
        }

        bool AnalogSensor::is_within_limits(uint32_t value)
        {
            auto min = config_value["allowed_range"]["min"].get_int(0);
            auto max = config_value["allowed_range"]["max"].get_int(std::numeric_limits<uint32_t>::max());

            return value >= min && value <= max;
        }
    }
}