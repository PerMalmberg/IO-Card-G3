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
                virtual void tick() = 0;
                virtual smooth::core::json::Value get_settings() = 0;
                std::chrono::seconds get_entry_delay();
                std::chrono::seconds get_exit_delay();

            protected:
                smooth::core::json::Value config_value;
                g3::AlarmConfig& config;
                const std::string name;
                bool initialized{false};
        };
    }
}