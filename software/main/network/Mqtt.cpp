#include "Mqtt.h"
#include <chrono>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/task_priorities.h>
#include <smooth/core/network/IPv4.h>
#include <smooth/core/ipc/Publisher.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "hardware_info.h"

using namespace smooth::core;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::network;
using namespace smooth::application::network::mqtt;
using namespace std::chrono;

Mqtt::Mqtt(std::string id, smooth::core::Task& task)
    : task(task),
      incoming_mqtt("incoming_mqtt", 10, task, *this),
      analog_value("analog2mqtt", 10, task, *this),
      digital_value("ditigal2mqtt", 10, task, *this),
      sensor_value("sensor2mqtt", 2, task, *this),
      id(id)
{    
}

Mqtt::~Mqtt()
{
    if(client)
    {
        client->disconnect();
    }
}

void Mqtt::start()
{
    if(!client)
    {
        JsonFile f{mqtt_config};

        auto &v = f.value();
        auto keep_alive = std::chrono::seconds{v["keep_alive_seconds"].get_int(5)};
        auto broker = v["broker"]["address"].get_string("");
        auto port = v["broker"]["port"].get_int(1883);

        if (broker.empty())
        {
            Log::error("Mqtt", "No broker specifified");
        }
        else
        {
            Log::info("Mqtt", Format("Starting MQTT client, id {1}", Str(id)));
            client = std::make_unique<MqttClient>(id, keep_alive, 8 * 1024, APPLICATION_BASE_PRIO, incoming_mqtt);
            client->connect_to(std::make_shared<IPv4>(broker, port), true);
        }
    }
}

void Mqtt::write_default()
{
    JsonFile f{mqtt_config};
    if(!f.exists())
    {
        auto &v = f.value();
        v["keep_alive_seconds"] = 5;
        v["broker"]["address"] = "";
        v["broker"]["port"] = 1883;
        f.save();
    }
}

void Mqtt::prepare_packet(smooth::core::json::Value& v)
{
    v["timestamp"] = std::to_string(static_cast<int64_t>(system_clock::now().time_since_epoch().count()));
}

void Mqtt::event(const smooth::application::network::mqtt::MQTTData &data)
{
    
}

void Mqtt::event(const AnalogValue& value)
{
    if(client)
    {
        Value v{};
        prepare_packet(v);
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/analog/input/");
        topic.append(std::to_string(value.get_input()));
        client->publish(topic, v.to_string(), QoS::EXACTLY_ONCE, false);
    }
}

void Mqtt::event(const DigitalValue& value)
{
    if(client)
    {
        Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, MQTT_CONNECTED, client->is_connected()});

        Value v{};
        prepare_packet(v);
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/input/");
        topic.append(value.get_name());
        client->publish(topic, v.to_string(), QoS::EXACTLY_ONCE, false);
    }
}

void Mqtt::event(const SensorValue& value)
{
    if(client)
    {
        Value v{};
        prepare_packet(v);
        v["temperature"] = value.get_temperature();
        v["humidity"] = value.get_humidity();
        v["pressure"] = value.get_pressure();

        std::string topic = id;
        topic.append("/io/status/sensor");
        client->publish(topic, v.to_string(), QoS::EXACTLY_ONCE, false);
    }
}