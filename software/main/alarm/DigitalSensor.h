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
                DigitalSensor(g3::AlarmConfig& config, int num);

                void update(const DigitalValue& value);
                bool is_triggered() override;
                void tick() override;

            protected:
                smooth::core::json::Value get_settings() override
                {
                    return config.get_source()["sensors"]["digital"]["input"][name];
                }               

            private:
                DigitalValue last;
        };
    }
}