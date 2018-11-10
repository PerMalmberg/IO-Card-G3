//
// Created by permal on 11/28/17.
//

#pragma once

#include <memory>
#include <smooth/application/io/ADS1115.h>

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

        uint16_t get_value() const
        {
            uint16_t result = 0;
            analog->read_conversion(result);
            return result;
        }

        void trigger_read() const
        {
            analog->trigger_single_read();
        }

    private:
        std::shared_ptr<smooth::application::io::ADS1115> analog;
        smooth::application::io::ADS1115::Multiplexer current = smooth::application::io::ADS1115::Multiplexer::Single_AIN0;
};



