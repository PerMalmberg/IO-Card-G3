#pragma once

#include <nlohmann/json.hpp>

class NewConfig
{
    public:
        NewConfig() = default;

        explicit NewConfig(nlohmann::json data)
        : cfg(std::move(data))
        {
        }

        [[nodiscard]] nlohmann::json get() const
        {
            return cfg;
        }

    private:
        nlohmann::json cfg;
};