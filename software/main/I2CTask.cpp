//
// Created by permal on 11/24/17.
//

#include "I2CTask.h"
#include <memory>
#include <smooth/core/util/ByteSet.h>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/task_priorities.h>
#include "AnalogValue.h"
#include "DigitalValue.h"
#include "DigitalStatusValue.h"
#include <smooth/core/util/ByteSet.h>

using namespace std;
using namespace std::chrono;
using namespace smooth::core::io;
using namespace smooth::core::logging;
using namespace smooth::core::util;
using namespace smooth::application::io;
using namespace smooth::core::ipc;

static const gpio_num_t DIGITAL_CHANGE_PIN = GPIO_NUM_35;
static const gpio_num_t ANALOG_CHANGE_PIN_1 = GPIO_NUM_39;
static const gpio_num_t ANALOG_CHANGE_PIN_2 = GPIO_NUM_36;

I2CTask::I2CTask()
        : Task("I2CTask", 8096, smooth::core::APPLICATION_BASE_PRIO, milliseconds(5000)),
          i2c_master(I2C_NUM_0, GPIO_NUM_33, false, GPIO_NUM_32, false, 100000),
          input_change_queue(*this, *this),
          analog_change_queue_1(*this, *this),
          analog_change_queue_2(*this, *this),
          digital_input_change(input_change_queue, DIGITAL_CHANGE_PIN, false, false, GPIO_INTR_ANYEDGE),
          analog_change_1(analog_change_queue_1, ANALOG_CHANGE_PIN_1, false, false, GPIO_INTR_NEGEDGE),
          analog_change_2(analog_change_queue_2, ANALOG_CHANGE_PIN_2, false, false, GPIO_INTR_NEGEDGE),
          i2c_reset(GPIO_NUM_25, false, false, false),
          set_output_cmd("set_output_cmd", 10, *this, *this)
{
}

void I2CTask::init()
{
    i2c_reset.set();
    std::this_thread::sleep_for(chrono::milliseconds(50));
    i2c_reset.clr();

    auto u1401 = init_MCP23017(0x20, "u1401");
    auto u1402 = init_MCP23017(0x21, "u1402");

    if (std::get<0>(u1401) && std::get<1>(u1402))
    {
        input_output = std::move(std::get<1>(u1401));
        status_io = std::move(std::get<1>(u1402));

        auto u501 = i2c_master.create_device<ADS1115>(0x48);
        if (u501->is_present())
        {
            auto u502 = i2c_master.create_device<ADS1115>(0x49);
            if (u502->is_present())
            {
                cycler_1 = make_unique<AnalogCycler>(std::move(u501));
                cycler_2 = make_unique<AnalogCycler>(std::move(u502));

                // Read inputs once on startup to clear waiting interrupts on the i2c devices.
                update_inputs();

                initialized = true;
            }
            else
            {
                Log::error(name, "u502 not present");
            }
        }
        else
        {
            Log::error(name, "u501 not present");
        }
    }
}


void I2CTask::tick()
{
    if (initialized)
    {
        cycler_1->trigger_read();
        cycler_2->trigger_read();
        read_digital();
    }
}

void I2CTask::event(const smooth::core::io::InterruptInputEvent& ev)
{
    if (ev.get_io() == DIGITAL_CHANGE_PIN)
    {
        uint8_t pins;
        if (input_output->read_interrupt_capture(MCP23017::Port::A, pins))
        {
            publish_digital(pins);
        }
    }
    else if (ev.get_io() == ANALOG_CHANGE_PIN_1)
    {
        uint16_t result = cycler_1->get_value();

        AnalogValue av(10 + cycler_1->get_input_number(), result);
        Publisher<AnalogValue>::publish(av);

        cycler_1->cycle();
    }
    else if (ev.get_io() == ANALOG_CHANGE_PIN_2)
    {
        uint16_t result = cycler_2->get_value();
        AnalogValue av(20 + cycler_2->get_input_number(), result);
        Publisher<AnalogValue>::publish(av);

        cycler_2->cycle();
    }
}

void I2CTask::update_inputs()
{
    read_digital();
    cycler_1->cycle();
    cycler_2->cycle();
}

void I2CTask::publish_digital(uint8_t pins)
{
    for (uint8_t i = 0;
         i < 8;
         ++i)
    {
        DigitalValue dv(i, static_cast<bool>(pins & 1));
        Publisher<DigitalValue>::publish(dv);
        pins >>= 1;
    }
}

void I2CTask::publish_digital_status(uint8_t pins)
{
    for (uint8_t i = 0;
         i < 8;
         ++i)
    {
        DigitalStatusValue dv(i, static_cast<bool>(pins & 1));
        Publisher<DigitalStatusValue>::publish(dv);
        pins >>= 1;
    }
}

void I2CTask::event(const I2CSetOutput& ev)
{
    smooth::core::util::ByteSet b(output_state);
    b.set(ev.get_io(), ev.get_state());

    if (ev.is_status_device())
    {
        status_io->set_output(smooth::application::io::MCP23017::Port::B, b);
    }
    else
    {
        input_output->set_output(smooth::application::io::MCP23017::Port::B, b);
    }
}

void I2CTask::read_digital()
{
    Log::info(name, "Read digital");
    uint8_t digital;
    input_output->read_input(MCP23017::Port::A, digital);
    publish_digital(digital);
    Log::info(name, "Read digital 1");

    uint8_t status;
    status_io->read_input(MCP23017::Port::A, status);
    publish_digital_status(status);
    Log::info(name, "Read digital 2");
}

std::tuple<bool, std::unique_ptr<smooth::application::io::MCP23017>>
I2CTask::init_MCP23017(uint8_t address, const std::string& name)
{
    std::unique_ptr<smooth::application::io::MCP23017> device = i2c_master.create_device<MCP23017>(address);

    bool res = device->is_present();

    if (res)
    {
        res = device->configure_device(
                false,// mirror_change_interrupt
                false, // interrupt_polarity_active_high
                // Port A are all inputs
                0xFF, // interrupt_on_change_enable_a
                0x00, // interrupt_control_register_a
                0x00, // interrupt_default_val_a
                // Port B are all outputs
                0x00, // interrupt_on_change_enable_b,
                0x00, // interrupt_control_register_b,
                0x00  // interrupt_default_val_b
        );

        Log::info(name, Format("Configure {1}: {2}", Str(name), Bool(res)));

        if (res)
        {
            res = device->configure_ports(
                    // Port A are all inputs
                    0xFF,
                    0x00,
                    0x00,
                    // Port B are all outputs
                    0x00,
                    0x00,
                    0x00);

            Log::info(name, Format("Configure ports {1}: {2}", Str(name), Bool(res)));

            device->set_output(MCP23017::Port::B, 0);
        }
    }
    else
    {
        Log::error(name, Format("{1} not present", Str(name)));
    }

    return std::make_tuple(res, std::move(device));
}

