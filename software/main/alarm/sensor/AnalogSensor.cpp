#include "AnalogSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include "alarm/event/AnalogValue.h"
#include "alarm/config_constants.h"
#include <smooth/core/util/json_util.h>

using namespace smooth::core::ipc;
using namespace smooth::core::json_util;

namespace g3
{
    namespace alarm
    {
        AnalogSensor::AnalogSensor(AlarmConfig& config, int num)
            : BaseSensor(config, num, false)
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
            auto min = default_value(config_value[ALLOWED_RANGE], MIN, 0);
            auto max = default_value(config_value[ALLOWED_RANGE], MAX, std::numeric_limits<uint32_t>::max());
            return value >= min && value <= max;
        }

        void AnalogSensor::send_value()
        {
            Publisher<AnalogValue>::publish(AnalogValue(last.get_input(), last.get_value()));
        }
    }
}