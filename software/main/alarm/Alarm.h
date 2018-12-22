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
#include "io/analog/AnalogValue.h"
#include "io/digital/DigitalValue.h"
#include "sensor/AnalogSensor.h"
#include "sensor/DigitalSensor.h"
#include "event/CodeEntered.h"

namespace g3
{
    namespace alarm
    {
        class Alarm 
            :   public smooth::core::fsm::StaticFSM<g3::alarm::state::BaseState, 2 * sizeof(g3::alarm::state::BaseState)>,
                public smooth::core::ipc::IEventListener<AnalogValue>,
                public smooth::core::ipc::IEventListener<DigitalValue>,
                public smooth::core::ipc::IEventListener<event::CodeEntered>,
                public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>
        {
            public:
                Alarm(smooth::core::Task& task);

                void code_entered(const std::string& code);

                void write_default() const
                {
                    cfg.write_default();
                }

                void start();

                bool are_any_sensors_triggered(const std::chrono::seconds& time_since_triggered);
                void start_exit_timer();
                void stop_exit_timer();
                bool validate_code(const std::string& code);

                void event(const AnalogValue& value);
                void event(const DigitalValue& value);
                void event(const event::CodeEntered& event);
                void event(const smooth::core::timer::TimerExpiredEvent& event);

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

                smooth::core::Task& task;
                smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue> analog_value;
                smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue> digital_value;
                smooth::core::ipc::SubscribingTaskEventQueue<event::CodeEntered> code_entered_sub;
                smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent> timer_event;
                std::vector<AnalogSensor> analog_sensors{};
                std::vector<DigitalSensor> digital_sensors{};
                AlarmConfig cfg{};
                bool started{false};
                std::shared_ptr<smooth::core::timer::Timer> exit_timer{};
                std::shared_ptr<smooth::core::timer::Timer> entry_timer{};
        };
    }
}
