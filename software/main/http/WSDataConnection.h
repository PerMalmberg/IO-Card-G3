#pragma once

#include "DataListener.h"
#include <smooth/application/network/http/websocket/WebsocketServer.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <alarm/event/ArmedStatus.h>

namespace http
{
    class WSDataConnection
            : public smooth::application::network::http::websocket::WebsocketServer,
            public DataListener,
            public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>,
            public smooth::core::ipc::IEventListener<ArmedStatus>
    {
        public:
            WSDataConnection(smooth::application::network::http::IServerResponse& response, smooth::core::Task& task)
                    : WebsocketServer(response, task),
                      DataListener(task),
                      timer_queue(TimerQueue::create("", 1, task, *this)),
                      status_toggle(smooth::core::timer::Timer::create("", 0, timer_queue, true, std::chrono::milliseconds{1500})),
                      armed_status(ArmedQueue::create("", 1, task, *this))
            {
                status_toggle->start();
            }

            void
            data_received(bool first_part, bool last_part, bool is_text, const std::vector<uint8_t>& data) override;

            void event(const AnalogValue& value) override;
            void event(const DigitalValue& value) override;
            void event(const SensorValue& value) override;
            void event(const DigitalOutputValue& value) override;
            void event(const DigitalStatusOutputValue& value) override;
            void event(const g3::alarm::event::SensorTriggered& value) override;
            void event(const g3::alarm::event::SensorRestored& value) override;
            void event(const smooth::core::timer::TimerExpiredEvent& event) override;
            void event(const ArmedStatus& event) override;

        private:
            std::stringstream ss{};
            using TimerQueue = smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent>;
            std::shared_ptr<TimerQueue> timer_queue;
            smooth::core::timer::TimerOwner status_toggle;
            using ArmedQueue = smooth::core::ipc::SubscribingTaskEventQueue<ArmedStatus>;
            std::shared_ptr<ArmedQueue> armed_status;
    };
}