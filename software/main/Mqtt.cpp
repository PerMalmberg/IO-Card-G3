#include "Mqtt.h"
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/task_priorities.h>
#include <smooth/core/network/IPv4.h>

using namespace smooth::core;
using namespace smooth::core::json;
using namespace smooth::core::network;
using namespace smooth::application::network::mqtt;

Mqtt::Mqtt(std::string id, smooth::core::Task& task)
    : task(task),
      incoming_mqtt("incoming_mqtt", 10, task, *this),
      id(id)
{
    JsonFile f{"/sdcard/mqtt.jsn"};

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

Mqtt::~Mqtt()
{
    if(client)
    {
        client->disconnect();
    }
}

void Mqtt::tick()
{
    if(client && client->is_connected())
    {
        client->publish(id, "Hello!", QoS::AT_LEAST_ONCE, false);
    }
}

void Mqtt::event(const smooth::application::network::mqtt::MQTTData &data)
{
}