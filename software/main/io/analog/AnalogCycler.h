//
// Created by permal on 11/28/17.
//

#pragma once

#include <utility>
#include <smooth/application/io/i2c/ADS1115.h>
#include <smooth/core/logging/log.h>

class AnalogCycler
{
    public:
        explicit AnalogCycler(std::shared_ptr<smooth::application::io::ADS1115> analog)
                : analog(analog)
        {
        }

        bool cycle();

        int get_input_number() const
        {
            return static_cast<int>(current - smooth::application::io::ADS1115::Multiplexer::Single_AIN0);
        }

        std::pair<bool, uint16_t> get_value() const
        {
            uint16_t result = 0;
            bool read_result = analog->trigger_single_read() 
                               && analog->read_conversion(result);
            return std::make_pair(read_result, result);
        }

    private:
        std::shared_ptr<smooth::application::io::ADS1115> analog;
        smooth::application::io::ADS1115::Multiplexer current = smooth::application::io::ADS1115::Multiplexer::Single_AIN0;
};



