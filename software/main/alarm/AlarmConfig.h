#pragma once

#include <smooth/core/json/Value.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/application/security/PasswordHash.h>

namespace g3
{
    class AlarmConfig
    {
        public:
            AlarmConfig();

            void load();
            void write_default() const;

            smooth::core::json::Value& get_source()
            {
                return f.value();
            }
        private:
            smooth::core::json::JsonFile f;
            smooth::application::security::PasswordHash ph{};
    };
}