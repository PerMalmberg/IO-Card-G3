#pragma once

#include "DigitalOutputValue.h"

class DigitalStatusOutputValue : public DigitalOutputValue
{
    public:
        DigitalStatusOutputValue() = default;

        DigitalStatusOutputValue(uint8_t output, bool value)
                : DigitalOutputValue(output, value, 's')
        {
        }
};
