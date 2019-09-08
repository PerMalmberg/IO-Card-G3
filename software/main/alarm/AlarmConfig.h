#pragma once

#include <nlohmann/json.hpp>
#include <smooth/core/json/JsonFile.h>
#include <smooth/application/security/PasswordHash.h>

namespace g3::alarm
{
    class AlarmConfig
    {
        public:
            static AlarmConfig& instance()
            {
                static AlarmConfig cfg{};
                return cfg;
            }

            AlarmConfig& operator=(const AlarmConfig&) = delete;
            AlarmConfig& operator=(AlarmConfig&&) = delete;
            AlarmConfig(const AlarmConfig&) = delete;
            AlarmConfig(AlarmConfig&&) = delete;

            void load();

            void write_default() const;
            nlohmann::json& get()
            {
                return f.value();
            }

        private:

            AlarmConfig();
            smooth::core::json::JsonFile f;
            smooth::application::security::PasswordHash ph{};
    };
}