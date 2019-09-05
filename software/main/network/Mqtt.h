#pragma once

#include <string>
#include <chrono>
#include <vector>
#include <smooth/core/Task.h>
#include <smooth/application/network/mqtt/MqttClient.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/filesystem/MountPoint.h>
#include "alarm/event/AnalogValue.h"
#include "alarm/event/DigitalValue.h"
#include "alarm/event/SensorTriggered.h"
#include "alarm/event/SensorRestored.h"
#include "io/sensor/SensorValue.h"
#include "io/digital/DigitalOutputValue.h"
#include "io/digital/DigitalStatusOutputValue.h"
#include "CommandDispatcher.h"
#include "DataListener.h"
#include <nlohmann/json.hpp>

class Mqtt : 
    public smooth::core::ipc::IEventListener<smooth::application::network::mqtt::MQTTData>,
            DataListener

{
    public:
        Mqtt(std::string id, smooth::core::Task& task, g3::CommandDispatcher& cmd);
        ~Mqtt() override;

        void start();
        static void write_default();

        void add_subscription(const std::string& topic);
        [[nodiscard]] bool is_connected() const { return client && client->is_connected(); }

        void event(const smooth::application::network::mqtt::MQTTData& data) override;
        void event(const AnalogValue& value) override;
        void event(const DigitalValue& value) override;
        void event(const SensorValue& value) override;
        void event(const DigitalOutputValue& value) override;
        void event(const DigitalStatusOutputValue& value) override;
        void event(const g3::alarm::event::SensorTriggered& value) override;
        void event(const g3::alarm::event::SensorRestored& value) override;

    private:
        void start_mqtt();
        void prepare_packet(nlohmann::json& v);
        void send(const std::string& topic, nlohmann::json& v);

        smooth::core::Task& task;
        g3::CommandDispatcher& cmd;

        using MQTTQueue = smooth::core::ipc::TaskEventQueue<smooth::application::network::mqtt::MQTTData>;

        std::shared_ptr<MQTTQueue> incoming_mqtt;
        std::unique_ptr<smooth::application::network::mqtt::MqttClient> client{};
        std::vector<std::string> subscriptions{};
        std::string id;
};