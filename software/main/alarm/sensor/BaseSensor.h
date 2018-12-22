#pragma once

#include "alarm/AlarmConfig.h"

#include <string>
#include <chrono>
#include <functional>
#include "alarm/config_constants.h"

namespace g3
{
    namespace alarm
    {
        class BaseSensor
        {
            public:
                BaseSensor(g3::alarm::AlarmConfig& config, int num);

                virtual ~BaseSensor() {}

                virtual bool is_triggered(const std::chrono::seconds& time_since_triggered, bool is_armed) = 0;
                virtual bool is_initialized() const { return initialized; }
                virtual smooth::core::json::Value get_settings() = 0;
                std::chrono::seconds get_entry_delay();
                std::chrono::seconds get_exit_delay();
            protected:
                void update_age();
                bool is_enabled() { return get_settings()[ENABLED].get_bool(false);}

                bool initialized{false};
                std::chrono::steady_clock::time_point last_update{std::chrono::steady_clock::time_point::min()};
                smooth::core::json::Value config_value{};

                g3::alarm::AlarmConfig& config;
                const std::string name;
        };
    }
}