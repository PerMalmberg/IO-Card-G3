#pragma once

#include <string>

class AnalogValue
{
    public:
        AnalogValue() = default;

        AnalogValue(int input, uint32_t value)
                : input(input),
                  value(value),
                  name("a" + std::to_string(input))
        {
        }

        int get_input() const
        {
            return input;
        }

        uint32_t get_value() const
        {
            return value;
        }

        const std::string& get_name() const
        {
            return name;
        }

    private:
        int input = 0;
        uint32_t value = 0;
        std::string name;
};
