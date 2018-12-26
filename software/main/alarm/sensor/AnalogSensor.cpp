#include "AnalogSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include "alarm/event/AnalogValue.h"
#include "alarm/config_constants.h"

using namespace smooth::core::ipc;

namespace g3
{
    namespace alarm
    {
        AnalogSensor::AnalogSensor(AlarmConfig& config, int num)
            : BaseSensor(config, 'a', num, false)
        {
            config_value = get_settings();                        
        }

        bool AnalogSensor::is_triggered()
        {
            return has_value 
                && is_enabled()
                && !is_within_limits(last.get_value());
        }

        void AnalogSensor::update(const RawAnalogValue& value)
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
            auto min = config_value[ALLOWED_RANGE][MIN].get_int(0);
            auto max = config_value[ALLOWED_RANGE][MAX].get_int(std::numeric_limits<uint32_t>::max());
            return value >= min && value <= max;
        }

        void AnalogSensor::send_value()
        {
            Publisher<AnalogValue>::publish(AnalogValue(last.get_input(), last.get_value()));
        }
    }
}