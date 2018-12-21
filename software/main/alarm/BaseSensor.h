#pragma once

#include "AlarmConfig.h"
#include <string>
#include <chrono>
#include <functional>

namespace g3
{
    namespace alarm
    {
        class BaseSensor
        {
            public:
                BaseSensor(g3::AlarmConfig& config, int num);

                virtual ~BaseSensor() {}

                virtual bool is_triggered() = 0;
                virtual bool is_initialized() const { return initialized; }
            protected:
                smooth::core::json::Value config_value;
                g3::AlarmConfig& config;
                const std::string name;
                bool initialized{false};
        };
    }
}