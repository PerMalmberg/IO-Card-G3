#pragma once

#include <string>
#include <io/analog/RawAnalogValue.h>

class AnalogValue : public RawAnalogValue
{
    public:
        AnalogValue() = default;

        AnalogValue(int input, uint32_t value)
                : RawAnalogValue(input, value)
        {
        }
};
