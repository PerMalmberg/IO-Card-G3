#pragma once

#include <string>
#include <chrono>
#include <smooth/core/Task.h>
#include <smooth/application/network/mqtt/MqttClient.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/json/Value.h>
#include "io/analog/AnalogValue.h"
#include "io/digital/DigitalValue.h"
#include "io/sensor/SensorValue.h"
#include "alarm/event/SensorTriggered.h"
#include "alarm/event/SensorRestored.h"

class Mqtt : 
    public smooth::core::ipc::IEventListener<smooth::application::network::mqtt::MQTTData>,
    public smooth::core::ipc::IEventListener<AnalogValue>,
    public smooth::core::ipc::IEventListener<DigitalValue>,
    public smooth::core::ipc::IEventListener<SensorValue>,
    public smooth::core::ipc::IEventListener<g3::alarm::event::SensorTriggered>,
    public smooth::core::ipc::IEventListener<g3::alarm::event::SensorRestored>
{
    public:
        Mqtt(std::string id, smooth::core::Task& task);
        ~Mqtt();
        void event(const smooth::application::network::mqtt::MQTTData& data);

        void start();
        static void write_default();

        void event(const AnalogValue& value);
        void event(const DigitalValue& value);
        void event(const SensorValue& value);
        void event(const g3::alarm::event::SensorTriggered& value);
        void event(const g3::alarm::event::SensorRestored& value);

    private:
        static constexpr const char* mqtt_config = "/sdcard/mqtt.jsn";

        void start_mqtt();
        void prepare_packet(smooth::core::json::Value& v);
        void send(const std::string& topic, smooth::core::json::Value& v);        

        smooth::core::Task& task;
        smooth::core::ipc::TaskEventQueue<smooth::application::network::mqtt::MQTTData> incoming_mqtt;
        smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue> analog_value;
        smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue> digital_value;
        smooth::core::ipc::SubscribingTaskEventQueue<SensorValue> sensor_value;
        smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorTriggered> sensor_triggered;
        smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorRestored> sensor_restored;
        std::unique_ptr<smooth::application::network::mqtt::MqttClient> client{};
        std::string id;
};