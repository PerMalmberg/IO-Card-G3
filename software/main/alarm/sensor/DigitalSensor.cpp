#include "DigitalSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/util/json_util.h>
#include "alarm/event/DigitalValue.h"
#include "alarm/config_constants.h"

using namespace smooth::core::ipc;
using namespace smooth::core::json_util;

namespace g3
{
    namespace alarm
    {
        DigitalSensor::DigitalSensor(AlarmConfig& config, int num)
            : BaseSensor(config, num, true)
        {            
            config_value = get_settings();
        }

        bool DigitalSensor::is_triggered()
        {
            return has_value 
                && is_enabled()
                && last.get_value() != default_value(config_value, ARMED_STATE, false);
        }

        void DigitalSensor::update(const DigitalInputValue& value)
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

        void DigitalSensor::send_value()
        {
            Publisher<DigitalValue>::publish(DigitalValue(last.get_input(), last.get_value()));
        }
    }
}