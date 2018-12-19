#pragma once

#include <smooth/core/json/Value.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/application/security/PasswordHash.h>

namespace g3
{
    class Config
    {
        public:
            Config();

            void write_default() const;
        private:
            smooth::core::json::JsonFile f;
            smooth::application::security::PasswordHash ph{};
    };
}