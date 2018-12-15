#pragma once

class SensorValue
{
    public:
        SensorValue() = default;

        SensorValue(float humidity, float pressure, float temperature)
                : humidity(humidity), pressure(pressure), temperature(temperature)
        {
        }

        float get_humidity() const{ return humidity; }
        float get_pressure() const{ return pressure; }
        float get_temperature() const{ return temperature; }

    private:
        float humidity;
        float pressure;
        float temperature;

};