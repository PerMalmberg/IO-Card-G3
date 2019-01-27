#pragma once

#include "BaseSensor.h"
#include <string>
#include <chrono>
#include "io/digital/RawDigitalValue.h"

namespace g3
{
    namespace alarm
    {
        class DigitalSensor : public BaseSensor
        {
            public: 
                DigitalSensor(AlarmConfig& config, int num);

                void update(const RawDigitalValue& value);
                bool is_triggered() override;

            protected:
                smooth::core::json::Value get_settings() override
                {
                    return config.get()[SENSORS][DIGITAL][INPUT][sensor_number];
                }

                void send_value() override;

            private:
                RawDigitalValue last;
        };
    }
}