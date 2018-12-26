#include "DigitalSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include "alarm/event/DigitalValue.h"
#include "alarm/config_constants.h"

using namespace smooth::core::ipc;

namespace g3
{
    namespace alarm
    {
        DigitalSensor::DigitalSensor(AlarmConfig& config, int num)
            : BaseSensor(config, 'd', num, true)
        {            
            config_value = get_settings();
        }

        bool DigitalSensor::is_triggered()
        {
            return has_value 
                && is_enabled()
                && last.get_value() != config_value.get_bool(ARMED_STATE);
        }

        void DigitalSensor::update(const RawDigitalValue& value)
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