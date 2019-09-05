#pragma once

#include "BaseSensor.h"
#include <string>
#include <chrono>
#include "io/digital/DigitalInputValue.h"

namespace g3
{
    namespace alarm
    {
        class DigitalSensor : public BaseSensor
        {
            public: 
                DigitalSensor(AlarmConfig& config, int num);

                void update(const DigitalInputValue& value);
                bool is_triggered() override;

            protected:
                nlohmann::json& get_settings() override
                {
                    return config.get()[SENSORS][DIGITAL][INPUT][sensor_number];
                }

                void send_value() override;

            private:
                DigitalInputValue last;
        };
    }
}