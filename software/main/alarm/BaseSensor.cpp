#include "BaseSensor.h"

using namespace std::chrono;

namespace g3
{
    namespace alarm
    {
        BaseSensor::BaseSensor(g3::AlarmConfig& config, int num)
            : config(config), name(std::to_string(num))
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
    }
}