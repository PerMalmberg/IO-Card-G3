#include "Mqtt.h"
#include <chrono>
#include <utility>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/util/json_util.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/task_priorities.h>
#include <smooth/core/network/IPv4.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/util/json_util.h>

using namespace smooth::core;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::json_util;
using namespace smooth::core::network;
using namespace smooth::application::network::mqtt;


using namespace std::chrono;

static const auto mqtt_config = smooth::core::filesystem::SDCardMount::instance().mount_point() / "mqtt.jsn";

Mqtt::Mqtt(std::string id, smooth::core::Task& task, g3::CommandDispatcher& cmd)
        : DataListener(task),
          task(task),
          cmd(cmd),
          incoming_mqtt(MQTTQueue::create("incoming_mqtt", 10, task, *this)),
          id(std::move(id))
{
}

Mqtt::~Mqtt()
{
    if (client)
    {
        client->disconnect();
    }
}

void Mqtt::start()
{
    if (!client)
    {
        JsonFile f{mqtt_config};

        auto& v = f.value();
        auto keep_alive = std::chrono::seconds{default_value(v, "keep_alive_seconds", 5)};
        auto broker = default_value(v["broker"], "address", "");
        auto port = default_value(v["broker"], "port", 1883);

        if (broker.empty())
        {
            Log::error("Mqtt", "No broker specified");
        }
        else
        {
            Log::info("Mqtt", Format("Starting MQTT client, id {1}", Str(id)));
            client = std::make_unique<MqttClient>(id, keep_alive, 8 * 1024, APPLICATION_BASE_PRIO, incoming_mqtt);
            for (const auto& t : subscriptions)
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
    if (!f.exists())
    {
        auto& v = f.value();
        void event(const DigitalOutputValue& value);
        void event(const DigitalStatusOutputValue& value);
        v["keep_alive_seconds"] = 5;
        v["broker"]["address"] = "";
        v["broker"]["port"] = 1883;

        if (!f.save())
        {
            Log::error("MQTT", "Could not write default MQTT config");
        }
    }
}

void Mqtt::prepare_packet(nlohmann::json& v)
{
    v["timestamp"] = std::to_string(static_cast<int64_t>(system_clock::now().time_since_epoch().count()));
}

void Mqtt::add_subscription(const std::string& topic)
{
    if (std::find(std::begin(subscriptions), std::end(subscriptions), topic) == std::end(subscriptions))
    {
        subscriptions.emplace_back(topic);
    }
}

void Mqtt::event(const smooth::application::network::mqtt::MQTTData& data)
{
    const auto& payload = smooth::application::network::mqtt::MqttClient::get_payload(data);

    cmd.process(data.first, payload);
}

void Mqtt::event(const AnalogValue& value)
{
    if (client)
    {
        nlohmann::json v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/analog/input/");
        topic.append(std::to_string(value.get_input()));
        send(topic, v);
    }
}

void Mqtt::event(const DigitalValue& value)
{
    if (client)
    {
        nlohmann::json v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/input/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const DigitalOutputValue& value)
{
    if (client)
    {
        nlohmann::json v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/output/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const DigitalStatusOutputValue& value)
{
    if (client)
    {
        nlohmann::json v{};
        v["value"] = static_cast<int32_t>(value.get_value());

        std::string topic = id;
        topic.append("/io/status/digital/status/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::event(const SensorValue& value)
{
    if (client)
    {
        nlohmann::json v{};
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
    if (client)
    {
        nlohmann::json v{};
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
    if (client)
    {
        nlohmann::json v{};
        v["triggered"] = false;
        std::string topic = id;
        topic.append("/alarm/sensor/");
        topic.append(value.get_name());
        send(topic, v);
    }
}

void Mqtt::send(const std::string& topic, nlohmann::json& v)
{
    prepare_packet(v);
    client->publish(topic, v.dump(), QoS::EXACTLY_ONCE, false);
}