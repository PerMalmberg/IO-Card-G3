#pragma once

#include <string>
#include <smooth/core/Task.h>
#include <smooth/application/network/mqtt/MqttClient.h>
#include <smooth/core/ipc/TaskEventQueue.h>

class Mqtt : 
    public smooth::core::ipc::IEventListener<smooth::application::network::mqtt::MQTTData>
{
    public:
        Mqtt(std::string id, smooth::core::Task& task);
        ~Mqtt();
        void event(const smooth::application::network::mqtt::MQTTData& data);

        void tick();

    private:
        void start_mqtt();

        smooth::core::Task& task;
        smooth::core::ipc::TaskEventQueue<smooth::application::network::mqtt::MQTTData> incoming_mqtt;
        std::unique_ptr<smooth::application::network::mqtt::MqttClient> client{};
        std::string id;
};