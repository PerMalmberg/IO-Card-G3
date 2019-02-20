#include "Player.h"

#include <string>
#include <algorithm>
#include <smooth/core/ipc/Publisher.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "timer_id.h"

using namespace smooth::core::ipc;
using namespace smooth::core::timer;

/*

A note book looks like follows.
Each signal starts with the time, in milliseconds, the buzzer should be on, then off, then on and so on.
The player will always turn off the buzzer when the last entry has been reched.

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
          queue("player", 3, task, *this),
          to_play("to_play", 3, task, *this),
          timer(Timer::create("player_timer", PLAYER_ID, queue, false, std::chrono::milliseconds{0})),
          note_book("/sdcard/notes.jsn")
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
        if (song_timings.size() > 0)
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

            if(current_song["repeat"].get_bool(false))
            {
                Log::info("Player", "Repeating song");
                start_song();
            }         
        }        
    }

    void Player::event(const PlaySong& ev)
    {
        std::vector<std::string> names{};
        note_book.value().get_member_names(names);

        // Check if the requested song exits before trying to get it so that we don't create garbage in the JSON structure, taking up memory.
        if (std::find(std::begin(names), std::end(names), ev.get_name()) != names.end())
        {
            current_song = note_book.value()[ev.get_name()];
            play_song(ev.get_name());
        }
        else
        {
            Log::info("Player", Format("Song '{1}' not found", Str(ev.get_name())));
            off();
            song_timings.clear();
            current_song = smooth::core::json::Value{};
        }        
    }

    void Player::play_song(const std::string& name)
    {
        Log::info("Player", Format("Playing song: '{1}'", Str(name)));
        start_song();
    }

    void Player::start_song()
    {
        off();

        song_timings.clear();

        auto signal = current_song["signal"];
        for(auto i = 0; i < signal.get_array_size(); ++i)
        {
            song_timings.emplace_back(signal[i].get_int(0));
        }

        if(song_timings.size() > 0)
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