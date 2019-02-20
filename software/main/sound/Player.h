#pragma once

#include <chrono>
#include <memory>
#include <list>
#include <smooth/core/Task.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/json/Value.h>
#include <smooth/core/json/JsonFile.h>
#include "hardware_info.h"
#include "PlaySong.h"

namespace sound
{
    class Player 
        : public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>,
          public smooth::core::ipc::IEventListener<PlaySong>
    {
        public:
            Player(smooth::core::Task&);

            void event(const smooth::core::timer::TimerExpiredEvent& ev);
            void event(const PlaySong& ev);

        private:
            void on();
            void off();
            void play_song(const std::string& name);
            void start_song();
            void time_next_tone();

            
            smooth::core::Task& task;
            smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent> queue;
            smooth::core::ipc::SubscribingTaskEventQueue<PlaySong> to_play;
            std::shared_ptr<smooth::core::timer::Timer> timer;
            smooth::core::json::JsonFile note_book;
            smooth::core::json::Value current_song{};
            std::list<std::chrono::milliseconds> song_timings{};            
            bool is_on{false};
    };
}