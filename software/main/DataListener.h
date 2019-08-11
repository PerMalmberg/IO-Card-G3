#pragma once

#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <alarm/event/AnalogValue.h>
#include <alarm/event/DigitalValue.h>
#include <io/sensor/SensorValue.h>
#include <io/digital/DigitalOutputValue.h>
#include <io/digital/DigitalStatusOutputValue.h>
#include <alarm/event/SensorTriggered.h>
#include <alarm/event/SensorRestored.h>

using AnalogQueue = smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue>;
using DigitalValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue>;
using SensorValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<SensorValue>;
using DigitalOutputValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalOutputValue>;
using DigitalStatusOutputValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalStatusOutputValue>;
using SensorTriggeredQueue = smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorTriggered>;
using SensorRestoredQueue = smooth::core::ipc::SubscribingTaskEventQueue<g3::alarm::event::SensorRestored>;

class DataListener : public smooth::core::ipc::IEventListener<AnalogValue>,
                     public smooth::core::ipc::IEventListener<DigitalValue>,
                     public smooth::core::ipc::IEventListener<SensorValue>,
                     public smooth::core::ipc::IEventListener<DigitalOutputValue>,
                     public smooth::core::ipc::IEventListener<DigitalStatusOutputValue>,
                     public smooth::core::ipc::IEventListener<g3::alarm::event::SensorTriggered>,
                     public smooth::core::ipc::IEventListener<g3::alarm::event::SensorRestored>
{
    public:
        explicit DataListener(smooth::core::Task& task) :
                analog_value(AnalogQueue::create("analog2mqtt", 10, task, *this)),
                digital_value(DigitalValueQueue::create("ditigal2mqtt", 10, task, *this)),
                sensor_value(SensorValueQueue::create("sensor2mqtt", 2, task, *this)),
                digital_output_value(DigitalOutputValueQueue::create("digital_output_value", 16, task, *this)),
                digital_status_output_value(
                        DigitalStatusOutputValueQueue::create("digital_status_output_value", 16, task, *this)),
                sensor_triggered(SensorTriggeredQueue::create("sensor_triggered", 16, task, *this)),
                sensor_restored(SensorRestoredQueue::create("restored_triggered", 16, task, *this))
        {
        }

        void event(const AnalogValue& value) override = 0;

        void event(const DigitalValue& value) override = 0;

        void event(const SensorValue& value) override = 0;

        void event(const DigitalOutputValue& value) override = 0;

        void event(const DigitalStatusOutputValue& value) override = 0;

        void event(const g3::alarm::event::SensorTriggered& value) override = 0;

        void event(const g3::alarm::event::SensorRestored& value) override = 0;

    protected:
        std::shared_ptr<AnalogQueue> analog_value;
        std::shared_ptr<DigitalValueQueue> digital_value;
        std::shared_ptr<SensorValueQueue> sensor_value;
        std::shared_ptr<DigitalOutputValueQueue> digital_output_value;
        std::shared_ptr<DigitalStatusOutputValueQueue> digital_status_output_value;
        std::shared_ptr<SensorTriggeredQueue> sensor_triggered;
        std::shared_ptr<SensorRestoredQueue> sensor_restored;
};