#pragma once

#include "BaseSensor.h"
#include <string>
#include <chrono>
#include "io/digital/DigitalValue.h"

namespace g3
{
    namespace alarm
    {
        class DigitalSensor : public BaseSensor
        {
            public: 
                DigitalSensor(AlarmConfig& config, int num);

                void update(const DigitalValue& value);
                bool is_triggered() override;

            protected:
                smooth::core::json::Value get_settings() override
                {
                    return config.get_source()[SENSORS][DIGITAL][INPUT][name];
                }

            private:
                DigitalValue last;
        };
    }
}