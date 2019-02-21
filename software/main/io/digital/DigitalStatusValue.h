#pragma once

#include "DigitalInputValue.h"

class DigitalStatusValue : public DigitalInputValue
{
    public:
        DigitalStatusValue() = default;

        DigitalStatusValue(uint8_t input, bool value)
                : DigitalInputValue(input, value, 's')
        {
        }
};