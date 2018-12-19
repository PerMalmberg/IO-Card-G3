#pragma once

#include <limits>
#include <string>
#include <chrono>
#include "AlarmConfig.h"

namespace g3
{
    namespace alarm
    {
        class AnalogSensor
        {
            public:
                AnalogSensor(g3::AlarmConfig& config);
            private:
                g3::AlarmConfig& config;
        };
    }
}