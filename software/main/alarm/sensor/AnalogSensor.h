#pragma once

#include "BaseSensor.h"
#include <string>
#include <chrono>
#include "io/analog/AnalogValue.h"

namespace g3
{
    namespace alarm
    {
        class AnalogSensor : public BaseSensor
        {
            public:
                AnalogSensor(AlarmConfig& config, int num);

                void update(const AnalogValue& value);
                bool is_triggered() override;

            protected:
                smooth::core::json::Value get_settings() override
                {
                    return config.get_source()[SENSORS][ANALOG][INPUT][name];
                }
            private:
                bool is_within_limits(uint32_t value);

                AnalogValue last;
        };
    }
}