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
                AnalogSensor(g3::AlarmConfig& config, int num);

                    void update(const AnalogValue& value);
                    bool is_triggered() override;

            protected:
                smooth::core::json::Value get_settings()
                {
                    return config.get_source()["sensors"]["digital"]["input"][name];
                }
            private:
                bool is_within_limits(uint32_t value);

                AnalogValue last;
        };
    }
}