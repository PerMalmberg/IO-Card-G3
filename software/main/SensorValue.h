#pragma once

class SensorValue
{
    public:
        SensorValue() = default;

        SensorValue(float humidity, float pressure, float temperature)
                : humidity(humidity), pressure(pressure), temperature(temperature)
        {
        }

    private:
        float humidity;
        float pressure;
        float temperature;

};