#include "keypad.h"
#include <driver/gpio.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/ipc/Publisher.h>
#include <sound/PlaySong.h>
#include <chrono>
#include "timer_id.h"
#include "commands.h"

using namespace std::chrono;
using namespace smooth::core::ipc;

namespace g3
{
    namespace keypad
    {
        Keypad::Keypad(smooth::core::Task& task, g3::CommandDispatcher& cmd, g3::DeviceId& id)
                :task(task),
                cmd(cmd),
                id(id),
                timer_expired_queue("timer_expired_queue", 2, task, *this),
                keypad_entry_timer(smooth::core::timer::Timer::create("keypad_entry_timer",
                                                                      KEYPAD_ENTRY_TIMEOUT,
                                                                      timer_expired_queue,
                                                                      false,
                                                                      std::chrono::seconds{2}))
        {
            wiegand = std::make_unique<smooth::application::io::wiegand::Wiegand>(task, *this, GPIO_NUM_27, GPIO_NUM_26);
        }

        void Keypad::wiegand_number(uint8_t num)
        {
            const int MAX_KEYPAD_LENGTH = 21;
           
            keypad_entry_timer->reset();
            
            if (num == 11) // '#'
            {
                auto command = id.get() + cmd_keypad_code_entered;
                cmd.process(command, std::string(R"!!({ "code": ")!!") + keypad_entry + R"!!("})!!");
                Log::info("Keypad", Format("{1}", Str(keypad_entry)));
                keypad_entry.clear();
            }
            else if(num == 10 ) // '*'
            {
                keypad_entry.clear();
            }
            else if (keypad_entry.size() > MAX_KEYPAD_LENGTH)
            {
                keypad_entry.clear();
            }
            else
            {
                keypad_entry += std::to_string(num);
            }            
        }

        void Keypad::wiegand_id(uint32_t id, uint8_t byte_count)
        {
            auto command = this->id.get() + cmd_keypad_code_entered;
            cmd.process(command, std::string(R"!!({ "code": ")!!") + std::to_string(id) + R"!!("})!!");
            Log::info("Keycard", Format("Num: {1}", Str(std::to_string(id))));
        }

        void Keypad::event(const smooth::core::timer::TimerExpiredEvent& event)
        {
            keypad_entry.clear();
            Publisher<sound::PlaySong>::publish(sound::PlaySong("key_entry_timeout"));
        }
    }
}