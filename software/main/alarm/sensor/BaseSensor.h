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
                BaseSensor(g3::alarm::AlarmConfig& config, char name_char, int num, bool is_digital);

                virtual ~BaseSensor() {}

                bool has_actual_value() const { return has_value; }
                virtual bool is_triggered() = 0;
                virtual smooth::core::json::Value get_settings() = 0;
                std::chrono::seconds get_entry_delay();
                std::chrono::seconds get_exit_delay();

            protected:
                void update_age();
                bool is_enabled() { return get_settings()[ENABLED].get_bool(false);}
                void signal_triggered();
                void signal_restored();
                std::string get_sensor_name();
                bool time_to_send_status();

                virtual void send_value() = 0;

                bool has_value{false};
                std::chrono::steady_clock::time_point last_update{std::chrono::steady_clock::time_point::min()};
                smooth::core::json::Value config_value{};
                std::chrono::seconds time_between_status{10};
                std::chrono::steady_clock::time_point last_status{std::chrono::steady_clock::now()};
                bool status_triggered{false};

                g3::alarm::AlarmConfig& config;
                char name_char;
                const std::string name;
                bool is_digital;
        };
    }
}