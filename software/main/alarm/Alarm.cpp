
#include "Alarm.h"
#include <algorithm>
#include <smooth/application/security/PasswordHash.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/json_util.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "state/Idle.h"
#include "hardware_info.h"
#include "config_constants.h"
#include "timer_id.h"
#include <sound/PlaySong.h>

using namespace std::chrono;
using namespace smooth::core::logging;
using namespace smooth::core::timer;
using namespace smooth::core::ipc;
using namespace smooth::core::json_util;

static constexpr const char* tag = "Alarm";

namespace g3
{
    namespace alarm
    {
        Alarm::Alarm(smooth::core::Task& task)
            :   task(task),
                analog_value( RawAnalogQueue::create("analog2alarm", 10, task, *this)),
                digital_value(DigitalInputValueQueue::create("digital2alarm", 10, task, *this)),
                code_entered_sub(CodeEnteredQueue::create("code_entered_sub", 5, task, *this)),
                sensor_triggered_sub(SensorTriggeredQueue::create("sensor_triggered_sub", 16, task, *this)),
                timer_event(TimerExpiredQueue::create("timer_event", 5, task, *this)),
                new_config(NewConfigQueue::create("", 1, task, *this))
        {            
            set_state(new(*this) state::Idle(*this));
            analog_sensors.reserve(ANALOG_INPUT_COUNT);
            digital_sensors.reserve(DIGITAL_INPUT_COUNT);
        }

        void Alarm::entering_state(g3::alarm::state::BaseState* state)
        {
            Log::info(tag, Format("Entering '{1}'.", Str(state->get_state_name())));
        }

        void Alarm::leaving_state(g3::alarm::state::BaseState* state)
        {
            Log::info(tag, Format("Leaving '{1}'.", Str(state->get_state_name())));
        }

        void Alarm::code_entered(const std::string& code)
        {
            get_state()->code_entered(code);
        }

        void Alarm::event(const RawAnalogValue& value)
        {
            update_sensor(analog_sensors, value);
        }

        void Alarm::event(const DigitalInputValue& value)
        {
            update_sensor(digital_sensors, value);
        }

        void Alarm::event(const event::CodeEntered& event)
        {
            code_entered(event.get_code());
        }

        void Alarm::event(const event::SensorTriggered& event)
        {
            get_state()->sensor_triggered(event);
        }

        void Alarm::event(const smooth::core::timer::TimerExpiredEvent& event)
        {
            if(event.get_id() == ALARM_TICK)
            {
                get_state()->tick();
                toggle_status = !toggle_status;
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit(I2CDevice::status, SNTP_TIME_SET, toggle_status));

                // Signal on alarm ouput too
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit(I2CDevice::output, 7 + 8, toggle_status));
            }
        }

        void Alarm::event(const NewConfig& event)
        {
            auto& cfg = AlarmConfig::instance();
            cfg.get() =  event.get();
            cfg.save();
            start();
        }

        void Alarm::start()
        {
            // Load config again in case the default one was just written to disk
            auto& cfg = AlarmConfig::instance();
            cfg.load();

            analog_sensors.clear();

            for(int i = 0; i < ANALOG_INPUT_COUNT; ++i)
            {
                analog_sensors.emplace_back(AnalogSensor{cfg, i});
            }

            digital_sensors.clear();

            for(int i = 0; i < DIGITAL_INPUT_COUNT; ++i)
            {
                digital_sensors.emplace_back(DigitalSensor{cfg, i});
            }
            
            if(tick)
            {
                tick->stop();
            }

            tick = Timer::create("alarm_tick", ALARM_TICK, timer_event, true, seconds{1});
            tick->start();

            started = true;
        }

        bool Alarm::validate_code(const std::string& code) const
        {
            auto& cfg = AlarmConfig::instance();
            auto number_of_codes = cfg.get()[CODES].size();
            smooth::application::security::PasswordHash ph{};

            Log::info(tag, Format("Code: {1}", Str(code)));

            bool valid = false;
            for (auto i = 0; !valid && i < number_of_codes; ++i)
            {
                auto& current = cfg.get()[CODES][i];
                auto stored_code = default_value( current, CODE, "");
                if (!stored_code.empty())
                {
                    valid = code == stored_code;

                    if (valid)
                    {
                        Log::info(tag, Format("Code validated for user {1}",
                                              Str(default_value(current, USER, "--NO-USER--"))));
                    }
                }
            }

            if(!valid)
            {
                Publisher<sound::PlaySong>::publish(sound::PlaySong("invalid_code"));
            }

            return valid;
        }

        bool Alarm::are_any_sensors_triggered()
        {
            return std::any_of(analog_sensors.begin(), analog_sensors.end(), [](auto& o){return o.is_triggered();} )
                    || std::any_of(digital_sensors.begin(), digital_sensors.end(), [](auto& o){return o.is_triggered();} );
        }

        bool Alarm::do_sensors_have_values() const
        {
            return std::all_of(analog_sensors.begin(), analog_sensors.end(), [](auto& o){return o.has_actual_value();} )
                    && std::all_of(digital_sensors.begin(), digital_sensors.end(), [](auto& o){return o.has_actual_value();} );
        }

        std::chrono::seconds Alarm::get_max_exit_delay()
        {
            auto find_max = [](BaseSensor& sensor, seconds& delay){ delay = std::max(sensor.get_exit_delay(), delay); };
            return get_delay(find_max);            
        }

        std::chrono::seconds Alarm::get_max_entry_delay()
        {
            auto find_max = [](BaseSensor& sensor, seconds& delay){ delay = std::max(sensor.get_entry_delay(), delay); };
            return get_delay(find_max);
        }

        std::chrono::seconds Alarm::get_delay(std::function<void(BaseSensor&, std::chrono::seconds& delay)> get_time_delay)
        {
            seconds delay{0};

            for(auto b = analog_sensors.begin(); b != analog_sensors.end(); b++)
            {
                get_time_delay(*b, delay);
            }

            for(auto b = digital_sensors.begin(); b != digital_sensors.end(); b++)
            {
                get_time_delay(*b, delay);
            }

            return delay;
        }

        std::chrono::seconds Alarm::get_triggered_timeout()
        {
            seconds s{default_value(AlarmConfig::instance().get()[TIMING][TIMEOUT], TRIGGERED, 60)};
            return s;
        }

        std::chrono::seconds Alarm::get_triggered_silence_timeout()
        {
            seconds s{default_value(AlarmConfig::instance().get()[TIMING][TIMEOUT], TRIGGERED_SILENCE, 60)};
            return s;
        }

        void Alarm::set_output(const std::string& output_number, bool active)
        {
            auto external_control_allowed = default_value(AlarmConfig::instance().get()[SENSORS][DIGITAL][OUTPUT][output_number], ALLOW_EXTERNAL_CONTROL, false);

            if (external_control_allowed)
            {
                // Outputs are located on port B, so we have to offset it by 8.
                auto n = atoi(output_number.c_str());
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit(I2CDevice::output, n + 8, active));
            }
        }        
    }
}