#pragma once

#include <string>
#include <io/digital/DigitalInputValue.h>

class DigitalValue : public DigitalInputValue
{
    public:
        DigitalValue() = default;

        DigitalValue(uint8_t input, bool value)
                : DigitalInputValue(input, value)
        {
        }
};
