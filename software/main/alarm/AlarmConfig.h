#pragma once

#include <nlohmann/json.hpp>
#include <smooth/core/json/JsonFile.h>
#include <smooth/application/security/PasswordHash.h>

namespace g3::alarm
{
    class AlarmConfig
    {
        public:
            AlarmConfig();

            void load();
            void write_default() const;

            nlohmann::json& get()
            {
                return f.value();
            }

        private:
            smooth::core::json::JsonFile f;
            smooth::application::security::PasswordHash ph{};
    };
}