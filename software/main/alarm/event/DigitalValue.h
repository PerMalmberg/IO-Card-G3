#pragma once

#include <string>
#include <io/digital/RawDigitalValue.h>

class DigitalValue : public RawDigitalValue
{
    public:
        DigitalValue() = default;

        DigitalValue(uint8_t input, bool value)
                : RawDigitalValue(input, value)
        {
        }
};
