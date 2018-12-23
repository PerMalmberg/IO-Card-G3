#include "BaseSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/logging/log.h>
#include "alarm/event/SensorTriggered.h"

using namespace std::chrono;
using namespace smooth::core::ipc;
using namespace smooth::core::logging;

namespace g3
{
    namespace alarm
    {
        BaseSensor::BaseSensor(g3::alarm::AlarmConfig& config, char name_char, int num)
            :   config(config),
                name_char(name_char),
                name(std::to_string(num))
        {
        }

        std::chrono::seconds BaseSensor::get_entry_delay()
        {
            return seconds{get_settings()["entry_delay"].get_int(0)};
        }
        
        std::chrono::seconds BaseSensor::get_exit_delay()
        {
            return seconds{get_settings()["exit_delay"].get_int(0)};
        }

        void BaseSensor::update_age()
        {   
            last_update = std::chrono::steady_clock::now();
        }

        void BaseSensor::signal_triggered()
        {
            Log::warning(get_sensor_name(), "Sensor triggered");
            Publisher<event::SensorTriggered>::publish(event::SensorTriggered(get_sensor_name(), get_entry_delay(), get_exit_delay()));
        }

        std::string BaseSensor::get_sensor_name()
        {
            auto sensor_name = config.get_source()[SENSORS][DIGITAL][INPUT][name][NAME].get_string("");
            if(sensor_name.empty())
            {
                sensor_name = "d";
                sensor_name += name;
            }

            return sensor_name;
        }
    }
}