#pragma once

#include "DigitalValue.h"

class DigitalStatusValue : public DigitalValue
{
    public:
        DigitalStatusValue() = default;

        DigitalStatusValue(uint8_t input, bool value)
                : DigitalValue(input, value, 's')
        {
        }
};