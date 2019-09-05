#pragma once

#include <chrono>
#include <memory>
#include <list>
#include <smooth/core/Task.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include <smooth/core/ipc/TaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/json/JsonFile.h>
#include "hardware_info.h"
#include "PlaySong.h"
#include <nlohmann/json.hpp>

namespace sound
{
    class Player 
        : public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>,
          public smooth::core::ipc::IEventListener<PlaySong>
    {
        public:
            explicit Player(smooth::core::Task&);

            void event(const smooth::core::timer::TimerExpiredEvent& ev) override;
            void event(const PlaySong& ev) override;

        private:
            void on();
            void off();
            void play_song(const std::string& name);
            void start_song();
            void time_next_tone();

            
            smooth::core::Task& task;

            using TimerExpiredQueue = smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent>;
            using PlaySongQueue = smooth::core::ipc::SubscribingTaskEventQueue<PlaySong>;

            std::shared_ptr<TimerExpiredQueue> queue;
            std::shared_ptr<PlaySongQueue> to_play;
            smooth::core::timer::TimerOwner timer;
            smooth::core::json::JsonFile note_book;
            nlohmann::json current_song{};
            std::list<std::chrono::milliseconds> song_timings{};            
            bool is_on{false};
    };
}