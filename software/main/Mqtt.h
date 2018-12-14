#pragma once

#include <string>
#include <smooth/core/Task.h>
#include <smooth/application/network/mqtt/MqttClient.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/json/Value.h>
#include "AnalogValue.h"
#include "DigitalValue.h"
#include "SensorValue.h"

class Mqtt : 
    public smooth::core::ipc::IEventListener<smooth::application::network::mqtt::MQTTData>,
    public smooth::core::ipc::IEventListener<AnalogValue>,
    public smooth::core::ipc::IEventListener<DigitalValue>,
    public smooth::core::ipc::IEventListener<SensorValue>  
{
    public:
        Mqtt(std::string id, smooth::core::Task& task);
        ~Mqtt();
        void event(const smooth::application::network::mqtt::MQTTData& data);

        void tick();

        void event(const AnalogValue& value);
        void event(const DigitalValue& value);
        void event(const SensorValue& value);

    private:
        void start_mqtt();
        void prepare_packet(smooth::core::json::Value& v);

        smooth::core::Task& task;
        smooth::core::ipc::TaskEventQueue<smooth::application::network::mqtt::MQTTData> incoming_mqtt;
        smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue> analog_value;
        smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue> digital_value;
        smooth::core::ipc::SubscribingTaskEventQueue<SensorValue> sensor_value;        
        std::unique_ptr<smooth::application::network::mqtt::MqttClient> client{};
        std::string id;
};