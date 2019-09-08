#pragma once

#include <vector>
#include <memory>
#include <smooth/core/fsm/StaticFSM.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include <smooth/core/Task.h>
#include "state/BaseState.h"
#include "AlarmConfig.h"
#include "io/analog/RawAnalogValue.h"
#include "io/digital/DigitalInputValue.h"
#include "sensor/AnalogSensor.h"
#include "sensor/DigitalSensor.h"
#include "event/CodeEntered.h"
#include "event/NewConfig.h"

namespace g3
{
    namespace alarm
    {
        class Alarm 
            :   public smooth::core::fsm::StaticFSM<g3::alarm::state::BaseState, 2 * sizeof(g3::alarm::state::BaseState)>,
                public smooth::core::ipc::IEventListener<RawAnalogValue>,
                public smooth::core::ipc::IEventListener<DigitalInputValue>,
                public smooth::core::ipc::IEventListener<event::CodeEntered>,
                public smooth::core::ipc::IEventListener<event::SensorTriggered>,
                public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>,
                public smooth::core::ipc::IEventListener<NewConfig>
        {
            public:
                Alarm(smooth::core::Task& task);

                void code_entered(const std::string& code);

                void write_default() const
                {
                    AlarmConfig::instance().write_default();
                }

                void start();

                bool are_any_sensors_triggered();
                bool do_sensors_have_values() const;
                bool validate_code(const std::string& code) const;
                std::chrono::seconds get_max_exit_delay();
                std::chrono::seconds get_max_entry_delay();
                std::chrono::seconds get_triggered_timeout();
                std::chrono::seconds get_triggered_silence_timeout();

                void set_output(const std::string& output_number, bool active);

                void event(const RawAnalogValue& value) override;
                void event(const DigitalInputValue& value) override;
                void event(const event::CodeEntered& event) override;
                void event(const event::SensorTriggered& event) override;
                void event(const smooth::core::timer::TimerExpiredEvent& event) override;
                void event(const NewConfig& event) override;

            protected:
                void entering_state(g3::alarm::state::BaseState* state) override;
                void leaving_state(g3::alarm::state::BaseState* state) override;
            private:
                template<typename SensorType, typename ValueType>
                void update_sensor(std::vector<SensorType>& container, const ValueType& value)
                {
                    if(started)
                    {
                        auto ix = value.get_input();
                        if(ix >= 0 && ix < container.size())
                        {
                            container[ix].update(value);
                        }
                    }
                }

                std::chrono::seconds get_delay(std::function<void(BaseSensor&, std::chrono::seconds& delay)> get_time_delay);

                using RawAnalogQueue = smooth::core::ipc::SubscribingTaskEventQueue<RawAnalogValue>;
                using DigitalInputValueQueue = smooth::core::ipc::SubscribingTaskEventQueue<DigitalInputValue>;
                using CodeEnteredQueue = smooth::core::ipc::SubscribingTaskEventQueue<event::CodeEntered>;
                using SensorTriggeredQueue = smooth::core::ipc::SubscribingTaskEventQueue<event::SensorTriggered>;
                using TimerExpiredQueue = smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent>;
                using NewConfigQueue = smooth::core::ipc::SubscribingTaskEventQueue<NewConfig>;

                smooth::core::Task& task;
                std::shared_ptr<RawAnalogQueue> analog_value;
                std::shared_ptr<DigitalInputValueQueue> digital_value;
                std::shared_ptr<CodeEnteredQueue> code_entered_sub;
                std::shared_ptr<SensorTriggeredQueue> sensor_triggered_sub;
                std::shared_ptr<TimerExpiredQueue> timer_event;
                std::shared_ptr<NewConfigQueue> new_config;
                
                std::vector<AnalogSensor> analog_sensors{};
                std::vector<DigitalSensor> digital_sensors{};
                bool started{false};
                bool togle_status{false};
                smooth::core::timer::TimerOwner tick{};
        };
    }
}
