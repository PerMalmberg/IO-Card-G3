#pragma once

#include <smooth/application/io/wiegand/Wiegand.h>
#include <smooth/application/io/wiegand/IWiegandSignal.h>
#include <smooth/core/Task.h>
#include <smooth/core/timer/Timer.h>
#include "CommandDispatcher.h"
#include "DeviceId.h"

namespace g3
{
    namespace keypad
    {
        class Keypad : public smooth::application::io::wiegand::IWiegandSignal,
                       public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>
        {
            public:
                Keypad(smooth::core::Task& task, g3::CommandDispatcher& cmd, g3::DeviceId& id);

                void event(const smooth::core::timer::TimerExpiredEvent& event) override;

                void wiegand_number(uint8_t num) override;
                void wiegand_id(uint32_t id) override;
            private:
                std::shared_ptr<smooth::application::io::wiegand::Wiegand> wiegand{};
                std::string keypad_entry{};
                smooth::core::Task& task;
                g3::CommandDispatcher& cmd;
                g3::DeviceId& id;
                using TimerExpiredQueue = smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent>;
                std::shared_ptr<TimerExpiredQueue> timer_expired_queue;
                smooth::core::timer::TimerOwner keypad_entry_timer;
        };
    } // keypad
    
} // g3
