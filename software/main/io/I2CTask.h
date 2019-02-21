#pragma once

#include <memory>
#include <tuple>
#include <smooth/core/Application.h>
#include <smooth/core/network/Wifi.h>
#include <smooth/core/io/Output.h>
#include <smooth/core/io/Input.h>
#include <smooth/core/ipc/ISRTaskEventQueue.h>
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>
#include <smooth/core/io/i2c/Master.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/io/InterruptInput.h>
#include <smooth/core/timer/Timer.h>
#include <smooth/core/timer/TimerExpiredEvent.h>
#include <smooth/application/io/i2c/MCP23017.h>
#include <smooth/application/io/i2c/ADS1115.h>
#include <smooth/application/io/i2c//BME280.h>
#include "analog/AnalogCycler.h"
#include "digital/I2CSetOutputCmd.h"

class I2CTask
        : public smooth::core::Task,
          public smooth::core::ipc::IEventListener<smooth::core::io::InterruptInputEvent>,
          public smooth::core::ipc::IEventListener<I2CSetOutput>,
          public smooth::core::ipc::IEventListener<I2CSetOutputBit>,
          public smooth::core::ipc::IEventListener<ExternalSirenCommand>,
          public smooth::core::ipc::IEventListener<smooth::core::timer::TimerExpiredEvent>
{
    public:
        I2CTask();

        void tick() override;

        void init() override;

        void event(const smooth::core::io::InterruptInputEvent& ev) override;
        void event(const smooth::core::timer::TimerExpiredEvent& ev) override;

        void event(const I2CSetOutput& ev) override;
        void event(const I2CSetOutputBit& ev) override;
        void event(const ExternalSirenCommand& ev) override;        

    private:
        smooth::core::io::i2c::Master i2c_master;
        smooth::core::ipc::ISRTaskEventQueue<smooth::core::io::InterruptInputEvent, 5> input_change_queue;
        smooth::core::ipc::ISRTaskEventQueue<smooth::core::io::InterruptInputEvent, 5> analog_change_queue_1;
        smooth::core::ipc::ISRTaskEventQueue<smooth::core::io::InterruptInputEvent, 5> analog_change_queue_2;
        smooth::core::io::InterruptInput digital_input_change;
        smooth::core::io::InterruptInput analog_change_1;
        smooth::core::io::InterruptInput analog_change_2;
        smooth::core::io::Output i2c_reset;
        smooth::core::io::Output external_siren;
        smooth::core::ipc::SubscribingTaskEventQueue<I2CSetOutput> set_output_cmd;
        smooth::core::ipc::SubscribingTaskEventQueue<I2CSetOutputBit> set_output_bit_cmd;
        smooth::core::ipc::SubscribingTaskEventQueue<ExternalSirenCommand> set_external_siren;
        smooth::core::ipc::TaskEventQueue<smooth::core::timer::TimerExpiredEvent> publish_output_queue;
        std::shared_ptr<smooth::core::timer::Timer> publish_output_timer;
        std::unique_ptr<smooth::application::io::MCP23017> input_output{};
        std::unique_ptr<smooth::application::io::MCP23017> status_io{};
        std::unique_ptr<smooth::application::sensor::BME280> sensor{};
        std::unique_ptr<AnalogCycler> cycler_1{};
        std::unique_ptr<AnalogCycler> cycler_2{};
        bool initialized{false};
        uint8_t digital_count{0};

        bool prepare_hw();
        void update_inputs();

        void read_digital();

        void read_sensor();

        template<typename T>
        void publish_read_value(uint8_t value, uint8_t offset = 0)
        {
            for (uint8_t i = 0; i < 8; ++i)
            {
                T dv(i + offset, static_cast<bool>(value & 1));
                smooth::core::ipc::Publisher<T>::publish(dv);
                value >>= 1;
            }
        }

        void publish_analog(uint8_t base_address, const AnalogCycler& cycler, uint16_t value);

        std::tuple<bool, std::unique_ptr<smooth::application::io::MCP23017>> init_MCP23017_U1401();

        std::tuple<bool, std::unique_ptr<smooth::application::io::MCP23017>> init_MCP23017_U1402();

        std::tuple<bool, std::unique_ptr<smooth::application::sensor::BME280>> init_BME280();

        void read_analog();
};

