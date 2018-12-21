#include "BaseSensor.h"

namespace g3
{
    namespace alarm
    {
        BaseSensor::BaseSensor(g3::AlarmConfig& config, int num)
            : config(config), name(std::to_string(num))
        {
        }
    }
}