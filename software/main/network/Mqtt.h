#pragma once

#include <string>
#include <chrono>
#include <vector>
#include <smooth/core/Task.h>
#include <smooth/application/network/mqtt/MqttClient.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/json/Value.h>
#include "alarm/event/AnalogValue.h"
#include "alarm/event/DigitalValue.h"
#include "alarm/event/SensorTriggered.h"
#include "alarm/event/SensorRestored.h"
#include "io/sensor/SensorValue.h"
#include "io/digital/DigitalOutputValue.h"
#include "io/digital/DigitalStatusOutputValue.h"
#include "CommandDispatcher.h"

class Mqtt : 
    public smooth::core::ipc::IEventListener<smooth::application::network::mqtt::MQTTData>,
    public smooth::core::ipc::IEventListener<AnalogValue>,
    public smooth::core::ipc::IEventListener<DigitalValue>,
    public smooth::core::ipc::IEventListener<SensorValue>,
    public smooth::core::ipc::IEventListener<DigitalOutputValue>,
    public smooth::core::ipc::IEventListener<DigitalStatusOutputValue>,
    public smooth::core::ipc::IEventListener<g3::alarm::event::SensorTriggered>,
    public smooth::core::ipc::IEventListener<g3::alarm::event::SensorRestored>
{
    public:
        Mqtt(std::string id, smooth::core::Task& task, g3::CommandDispatcher& cmd);
        ~Mqtt();
        void event(const smooth::application::network::mqtt::MQTTData& data);

        void start();
        static void write_default();

        void add_subscription(const std::string& topic);
        bool is_connected() const { return client && client->is_connected(); }

        void event(const AnalogValue& value);
        void event(const DigitalValue& value);
        void event(const SensorValue& value);
        void event(const DigitalOutputValue& value);
        void event(const DigitalStatusOutputValue& value);
        void event(const g3::alarm::event::SensorTriggered& value);
        void event(const g3::alarm::event::SensorRestored& value);

    private:
        static constexpr const char* mqtt_config = "/sdcard/mqtt.jsn";

        void start_mqtt();
        void prepare_packet(smooth::core::json::Value& v);
        void send(const std::string& topic, smooth::core::json::Value& v);        

        smooth::core::Task& task;
        g3::CommandDispatcher& cmd;

        using MQTTQueue = smooth::core::ipc::TaskEventQueue<smooth::application::network::mqtt::MQTTData>;
        using AnalogQueue = smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue>;
        using DigitalValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue>;
        using SensorValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<SensorValue>;
        using DigitalOutputValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalOutputValue>;
        using DigitalStatusOutputValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusOutputValue>;
        using SensorTriggeredQueue = smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorTriggered>;
        using SensorRestoredQueue = smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorRestored>;


        std::shared_ptr<MQTTQueue> incoming_mqtt;
        std::shared_ptr<AnalogQueue> analog_value;
        std::shared_ptr<DigitalValueQueue> digital_value;
        std::shared_ptr<SensorValueQueue> sensor_value;
        std::shared_ptr<DigitalOutputValueQueue> digital_output_value;
        std::shared_ptr<DigitalStatusOutputValueQueue> digital_status_output_value;
        std::shared_ptr<SensorTriggeredQueue> sensor_triggered;
        std::shared_ptr<SensorRestoredQueue> sensor_restored;
        std::unique_ptr<smooth::application::network::mqtt::MqttClient> client{};
        std::vector<std::string> subscriptions{};
        std::string id;
};