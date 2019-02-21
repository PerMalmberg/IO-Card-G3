#pragma once

#include <string>

class DigitalOutputValue
{
    public:
        DigitalOutputValue() = default;

        DigitalOutputValue(uint8_t output, bool value, char char_name = 'o')
                : output(output),
                  value(value),
                  name(char_name + std::to_string(output))
        {
        }

        uint8_t get_output() const
        {
            return output;
        }

        bool get_value() const
        {
            return value;
        }

        const std::string& get_name() const
        {
            return name;
        }

    private:
        uint8_t output = 0;
        bool value = false;
        std::string name{};
};
