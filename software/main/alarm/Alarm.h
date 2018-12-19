#pragma once

#include <vector>
#include <smooth/core/fsm/StaticFSM.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/Task.h>
#include "state/BaseState.h"
#include "AlarmConfig.h"
#include "io/analog/AnalogValue.h"
#include "io/digital/DigitalValue.h"
#include "AnalogSensor.h"
#include "DigitalSensor.h"

namespace g3
{
    namespace alarm
    {
        class Alarm 
            :   public smooth::core::fsm::StaticFSM<g3::alarm::state::BaseState, 2 * sizeof(g3::alarm::state::BaseState)>,
                public smooth::core::ipc::IEventListener<AnalogValue>,
                public smooth::core::ipc::IEventListener<DigitalValue>
        {
            public:
                Alarm(smooth::core::Task& task);

                void code_entered(std::string& code)
                {
                    get_state()->code_entered(code);
                }

                void timeout()
                {
                    get_state()->timeout();
                }

                void write_default() const
                {
                    cfg.write_default();
                }

                void start()
                {
                    cfg.load();
                    started = true;
                }

                void event(const AnalogValue& value);
                void event(const DigitalValue& value);

                private:
                    smooth::core::Task& task;
                    smooth::core::ipc::SubscribingTaskEventQueue<AnalogValue> analog_value;
                    smooth::core::ipc::SubscribingTaskEventQueue<DigitalValue> digital_value;
                    std::vector<AnalogSensor> analog_sensors{};
                    std::vector<DigitalSensor> digital_sensors{};
                    AlarmConfig cfg{};
                    bool started{false};
        };
    }
}
