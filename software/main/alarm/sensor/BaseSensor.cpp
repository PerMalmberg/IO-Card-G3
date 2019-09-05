#include "BaseSensor.h"
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/json_util.h>
#include "alarm/event/SensorTriggered.h"
#include "alarm/event/SensorRestored.h"

using namespace std::chrono;
using namespace smooth::core::ipc;
using namespace smooth::core::json_util;
using namespace smooth::core::logging;

namespace g3
{
    namespace alarm
    {
        BaseSensor::BaseSensor(g3::alarm::AlarmConfig& config, int sensor_number, bool is_digital)
            :   config(config),
                sensor_number(std::to_string(sensor_number)),
                is_digital(is_digital)
        {
        }

        std::chrono::seconds BaseSensor::get_entry_delay()
        {
            return seconds{default_value(get_settings(), ENTRY_DELAY, 0)};
        }
        
        std::chrono::seconds BaseSensor::get_exit_delay()
        {
            return seconds{default_value(get_settings(), EXIT_DELAY, 0)};
        }

        void BaseSensor::update_age()
        {   
            last_update = std::chrono::steady_clock::now();
        }

        void BaseSensor::signal_triggered()
        {
            if(is_enabled() && (!status_triggered || time_to_send_status()))
            {
                status_triggered = true;
                Publisher<event::SensorTriggered>::publish(event::SensorTriggered(get_sensor_name(), get_entry_delay(), get_exit_delay()));
                send_value();
                Log::info(get_sensor_name(), "Triggered.");
            }
        }

        void BaseSensor::signal_restored()
        {
            if(is_enabled() && (status_triggered || time_to_send_status()))
            {
                status_triggered = false;
                Publisher<event::SensorRestored>::publish(event::SensorRestored(get_sensor_name()));
                send_value();
                Log::info(get_sensor_name(), "Restored.");
            }
        }

        bool BaseSensor::time_to_send_status()
        {
            auto now = steady_clock::now();

            bool res = false;

            if(last_status + time_between_status <= now)
            {
                last_status = now;
                res = true;
            }

            return res;
        }

        std::string BaseSensor::get_sensor_name()
        {
            auto sensor_name = default_value(get_settings(), NAME, "");
            if(sensor_name.empty())
            {
                sensor_name = "NoName";
            }

            return sensor_name;
        }
    }
}