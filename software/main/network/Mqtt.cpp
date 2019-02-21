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

Mqtt::Mqtt(std::string id, smooth::core::Task& task, g3::CommandDispatcher& cmd)
    : task(task),
      cmd(cmd),
      incoming_mqtt("incoming_mqtt", 10, task, *this),
      analog_value("analog2mqtt", 10, task, *this),
      digital_value("ditigal2mqtt", 10, task, *this),
      sensor_value("sensor2mqtt", 2, task, *this),
      digital_output_value("digital_output_value", 16, task, *this),
      digital_status_output_value("digital_status_output_value", 16, task, *this),
      sensor_triggered("sensor_triggered", 16, task, *this),
      sensor_restored("restored_triggered", 16, task, *this),
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
            for(const auto& t : subscriptions)
            {
                client->subscribe(t, QoS::EXACTLY_ONCE);
            }

            client->connect_to(std::make_shared<IPv4>(broker, port), true);
        }
    }
}

void Mqtt::write_default()
{
    JsonFile f{mqtt_config};
    if(!f.exists())
    {
        auto &v = f.value();void event(const DigitalOutputValue& value);
        void event(const DigitalStatusOutputValue& value);
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

void Mqtt::add_subscription(const std::string& topic)
{
    if( std::find(std::begin(subscriptions), std::end(subscriptions), topic) == std::end(subscriptions))
    {
        subscriptions.emplace_back(topic);
    }
}

void Mqtt::event(const smooth::application::network::mqtt::MQTTData &data)
{
    const auto& payload = smooth::application::network::mqtt::MqttClient::get_payload(data);    

    cmd.process(data.first, payload);
}

void Mqtt::event(const AnalogValue& value)
{
    if (client)
    {
        Value v{};        
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/analog/input/");
        topic.append(std::to_string(value.get_input()));
        send(topic, v);
    }
}

void Mqtt::event(const DigitalValue& value)
{
    if(client)
    {
        Value v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/input/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const DigitalOutputValue& value)
{
    if(client)
    {
        Value v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/output/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const DigitalStatusOutputValue& value)
{
    if(client)
    {
        Value v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/status/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const SensorValue& value)
{
    if(client)
    {
        Value v{};
        v["temperature"] = value.get_temperature();
        v["humidity"] = value.get_humidity();
        v["pressure"] = value.get_pressure();

        std::string topic = id;
        topic.append("/io/status/sensor");
        send(topic, v);
    }
}

void Mqtt::event(const g3::alarm::event::SensorTriggered& value)
{
    if(client)
    {
        Value v{};
        prepare_packet(v);
        v["triggered"] = true;
        std::string topic = id;
        topic.append("/alarm/sensor/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const g3::alarm::event::SensorRestored& value)
{
    if(client)
    {
        Value v{};
        v["triggered"] = false;
        std::string topic = id;
        topic.append("/alarm/sensor/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::send(const std::string& topic, smooth::core::json::Value& v)
{
    prepare_packet(v);
    client->publish(topic, v.to_string(), QoS::EXACTLY_ONCE, false);
}