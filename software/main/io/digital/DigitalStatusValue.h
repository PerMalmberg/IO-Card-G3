#pragma once

#include "RawDigitalValue.h"

class DigitalStatusValue : public RawDigitalValue
{
    public:
        DigitalStatusValue() = default;

        DigitalStatusValue(uint8_t input, bool value)
                : RawDigitalValue(input, value, 's')
        {
        }
};