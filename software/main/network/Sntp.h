#pragma once

#include <memory>
#include <chrono>
#include <smooth/core/sntp/Sntp.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/Task.h>
#include <smooth/core/ipc/IEventListener.h>

namespace g3
{
      namespace network
      {
            class Sntp : public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>
            {
            public:
                  Sntp(smooth::core::Task &task);

                  void start()
                  {
                        sntp_timer->start();
                  }

                  void event(const smooth::core::timer::TimerExpiredEvent& ev) override;
                  void write_default() const;

            private:
                  smooth::core::Task &task;
                  using SNTPQueue = smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent>;
                  std::shared_ptr<SNTPQueue> sntp_queue;
                  smooth::core::timer::TimerOwner sntp_timer{};
                  std::unique_ptr<smooth::core::sntp::Sntp> sntp{};
            };
      }
}