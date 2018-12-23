
#include "Alarm.h"
#include <algorithm>
#include <smooth/application/security/PasswordHash.h>
#include <smooth/core/logging/log.h>
#include "state/Idle.h"
#include "hardware_info.h"
#include "config_constants.h"
#include "alarm/timer_id.h"

using namespace std::chrono;
using namespace smooth::core::logging;
using namespace smooth::core::timer;

static constexpr const char* tag = "Alarm";

namespace g3
{
    namespace alarm
    {
        Alarm::Alarm(smooth::core::Task& task)
            :   task(task),
                analog_value("analog2alarm", 10, task, *this),
                digital_value("digital2alarm", 10, task, *this),
                code_entered_sub("code_entered_sub", 5, task, *this),
                sensor_triggered_sub("sensor_triggered_sub", 16, task, *this),
                timer_event("timer_event", 5, task, *this)
        {            
            set_state(new(*this) state::Idle(*this));
            analog_sensors.reserve(ANALOG_INPUT_COUNT);
            digital_sensors.reserve(DIGITAL_INPUT_COUNT);
        }

        void Alarm::entering_state(g3::alarm::state::BaseState* state)
        {
            Log::debug(tag, Format("Entering '{1}'.", Str(state->get_state_name())));
        }

        void Alarm::leaving_state(g3::alarm::state::BaseState* state)
        {
            Log::debug(tag, Format("Leaving '{1}'.", Str(state->get_state_name())));
        }

        void Alarm::code_entered(const std::string& code)
        {
            get_state()->code_entered(code);
        }

        void Alarm::event(const AnalogValue& value)
        {
            update_sensor(analog_sensors, value);
        }

        void Alarm::event(const DigitalValue& value)
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
            }
        }

        void Alarm::start()
        {
            // Load config again in case the default one was just written to disk
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

        bool Alarm::validate_code(const std::string& code)
        {            
            auto number_of_codes = cfg.get_source()[CODES].get_array_size();
            smooth::application::security::PasswordHash ph{};

            Log::info(tag, Format("Code: {1}", Str(code)));

            bool valid = false;
            for (auto i = 0; !valid && i < number_of_codes; ++i)
            {
                valid = ph.verify_password_against_hash(code, cfg.get_source()[CODES][i][VERIFICATION_DATA].get_string(""));
                if(valid)
                {
                    Log::info(tag, Format("Code validated against hash {1}", Int32(i)));
                }
            }

            if(!valid)
            {
                // TODO: signal erroneous code
            }

            return valid;
        }

        bool Alarm::are_any_sensors_triggered()
        {
            return std::any_of(analog_sensors.begin(), analog_sensors.end(), [&](auto& o){return o.is_triggered();} )
                    || std::any_of(digital_sensors.begin(), digital_sensors.end(), [&](auto& o){return o.is_triggered();} );
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
            seconds s{cfg.get_source()[TIMING][TIMEOUT][TRIGGERED].get_int(60)};
            return s;
        }

        std::chrono::seconds Alarm::get_triggered_silence_timeout()
        {
            seconds s{cfg.get_source()[TIMING][TIMEOUT][TRIGGERED_SILENCE].get_int(60)};
            return s;
        }
        
    }
}