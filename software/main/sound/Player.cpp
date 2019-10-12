#include "Player.h"

#include <string>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/util/json_util.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "timer_id.h"
#include <smooth/core/filesystem/MountPoint.h>

using namespace smooth::core::ipc;
using namespace smooth::core::timer;
using namespace smooth::core::filesystem;
using namespace smooth::core::json_util;

/*

A note book looks like follows.
Each signal starts with the time, in milliseconds, the buzzer should be on, then off, then on and so on.
The player will always turn off the buzzer when the last entry has been reached.

{
	"entry_delay": {
		"signal": [500, 500],
		"repeat": true
	},
	"exit_delay": {
		"signal": [1500, 500],
		"repeat": true
	},
	"error": {
		"signal": [250, 250, 250, 250, 250, 250],
		"repeat": false
	},
	"armed": {
		"signal": [2500, 2500, 2500, 2500],
		"repeat": false
	},
	"disarmed": {
		"signal": [2500, 2500, 2500, 2500],
		"repeat": false
	}
}

*/

namespace sound
{
    Player::Player(smooth::core::Task& task)
        : task(task),
          queue(TimerExpiredQueue::create(3, task, *this)),
          to_play(PlaySongQueue::create(3, task, *this)),
          timer(PLAYER_ID, queue, false, std::chrono::milliseconds{0}),
          note_book(SDCardMount::instance().mount_point() / "notes.jsn")
    {        
    }

    void Player::on()
    {
        is_on = true;
        Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, BUZZER, true});
    }

    void Player::off()
    {
        is_on = false;
        Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, BUZZER, false});
    }

    void Player::event(const smooth::core::timer::TimerExpiredEvent& ev)
    {
        if (!song_timings.empty())
        {
            // Alternate between on/off each time the timer expires.
            if (is_on)
            {
                off();
            }
            else
            {
                on();
            }

            time_next_tone();
        }
        else
        {
            off();

            if(default_value(current_song, "repeat", false))
            {
                Log::info("Player", "Repeating song");
                start_song();
            }         
        }        
    }

    void Player::event(const PlaySong& ev)
    {
        const auto& book = note_book.value();
        auto song = book.find(ev.get_name());

        if(song != book.end())
        {
            current_song = *song;
            play_song(ev.get_name());
        }
        else
        {
            Log::info("Player","'{}' not found", ev.get_name());
            off();
            song_timings.clear();
            current_song.clear();
        }        
    }

    void Player::play_song(const std::string& name)
    {
        Log::info("Player", "Playing song: '{}'", name);
        start_song();
    }

    void Player::start_song()
    {
        off();

        song_timings.clear();

        auto signal = current_song["signal"];
        for(auto t : signal)
        {
            song_timings.emplace_back(t);
        }

        if(!song_timings.empty())
        {
            on();
            time_next_tone();
        }
    }

    void Player::time_next_tone()
    {
        timer->start(song_timings.front());
        song_timings.pop_front();
    }
}