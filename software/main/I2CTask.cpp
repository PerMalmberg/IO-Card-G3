//
// Created by permal on 11/24/17.
//

#include "I2CTask.h"
#include <memory>
#include <smooth/core/util/ByteSet.h>
#include <smooth/core/task_priorities.h>
#include "AnalogValue.h"
#include "DigitalValue.h"
#include "DigitalStatusValue.h"
#include "SensorValue.h"
#include <smooth/core/util/ByteSet.h>
#include <driver/gpio.h>

using namespace std;
using namespace std::chrono;
using namespace smooth::core::io;
using namespace smooth::core::logging;
using namespace smooth::core::util;
using namespace smooth::application::io;
using namespace smooth::application::sensor;
using namespace smooth::core::ipc;

static const gpio_num_t DIGITAL_CHANGE_PIN = GPIO_NUM_35;
static const gpio_num_t ANALOG_CHANGE_PIN_1 = GPIO_NUM_39;
static const gpio_num_t ANALOG_CHANGE_PIN_2 = GPIO_NUM_36;

I2CTask::I2CTask()
        : Task("I2CTask", 8096, smooth::core::APPLICATION_BASE_PRIO, seconds(30)),
          i2c_master(I2C_NUM_0, GPIO_NUM_33, false, GPIO_NUM_32, false, 100000),
          input_change_queue(*this, *this),
          analog_change_queue_1(*this, *this),
          analog_change_queue_2(*this, *this),
          digital_input_change(input_change_queue, DIGITAL_CHANGE_PIN, false, false, GPIO_INTR_ANYEDGE),
          analog_change_1(analog_change_queue_1, ANALOG_CHANGE_PIN_1, false, false, GPIO_INTR_NEGEDGE),
          analog_change_2(analog_change_queue_2, ANALOG_CHANGE_PIN_2, false, false, GPIO_INTR_NEGEDGE),
          i2c_reset(GPIO_NUM_25, false, false, false),
          set_output_cmd("set_output_cmd", 10, *this, *this),
          set_output_bit_cmd("set_output_bit_cmd", 10, *this, *this)
{
}

void I2CTask::init()
{
    initialized = prepare_hw();    
}

bool I2CTask::prepare_hw()
{
    bool res = false;

    i2c_reset.set();
    std::this_thread::sleep_for(chrono::milliseconds(50));
    i2c_reset.clr();

    auto u1401 = init_MCP23017_U1401();
    auto u1402 = init_MCP23017_U1402();

    // The BME280 device is optional
    auto bme280 = init_BME280();
    if(std::get<0>(bme280))
    {
        sensor = std::move(std::get<1>(bme280));
    }

    if (std::get<0>(u1401) && std::get<0>(u1402))
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
                res = true;
                update_inputs();
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

    return res;
}


void I2CTask::tick()
{
    if (initialized)
    {
        if (cycler_1)
        {
            cycler_1->trigger_read();
        }
        if (cycler_2)
        {
            cycler_2->trigger_read();
        }

        read_digital();
        read_sensor();
    }
    else
    {
        initialized = prepare_hw();
    }
}

void I2CTask::event(const smooth::core::io::InterruptInputEvent& ev)
{
    if (ev.get_io() == DIGITAL_CHANGE_PIN)
    {
        uint8_t pins;
        if (input_output->read_interrupt_capture(MCP23017::Port::A, pins))
        {
            publish_read_value<DigitalValue>(pins);
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

void I2CTask::event(const I2CSetOutput& ev)
{
    uint8_t output_state = 0;
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

void I2CTask::event(const I2CSetOutputBit& ev)
{
    uint8_t output_state = 0;

    auto& device = ev.is_status_device() ? status_io : input_output;

    if (device->read_output(smooth::application::io::MCP23017::Port::B, output_state))
    {
        smooth::core::util::ByteSet b{output_state};
        b.set(ev.get_bit(), ev.get_state());
        if (!device->set_output(smooth::application::io::MCP23017::Port::B, b))
        {
            Log::error(name, "Failed to set output");
        }
    }
    else
    {
        Log::error(name, "Failed to read outputs");
    }
}

void I2CTask::read_digital()
{
    uint8_t val;

    if (input_output)
    {
        input_output->read_input(MCP23017::Port::A, val);
        publish_read_value<DigitalValue>(val);
    }

    if (status_io)
    {
        status_io->read_input(MCP23017::Port::A, val);
        publish_read_value<DigitalStatusValue>(val);
    }
}

void I2CTask::read_sensor()
{
    if (sensor)
    {
        float humidity;
        float pressure;
        float temperature;

        if (sensor->read_measurements(humidity, pressure, temperature))
        {
            Publisher<SensorValue>::publish(SensorValue{humidity, pressure, temperature});
        }
    }
}

std::tuple<bool, std::unique_ptr<smooth::application::io::MCP23017>>
I2CTask::init_MCP23017_U1401()
{
    auto device = i2c_master.create_device<MCP23017>(0x20);

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

        Log::info(name, Format("Configure U1401: {1}", Bool(res)));

        if (res)
        {
            res = device->configure_ports(
                    // Port A
                    0xFF,  // direction
                    0x00,  // pullup
                    0x00,  // polarity
                    // Port B
                    0x00,  // direction
                    0x00,  // pullup
                    0x00); // polarity

            Log::info(name, Format("Configure ports U1401: {1}", Bool(res)));

            device->set_output(MCP23017::Port::B, 0);
        }
    }
    else
    {
        Log::error(name, "U1401 not present");
    }

    return std::make_tuple(res, std::move(device));
}

std::tuple<bool, std::unique_ptr<smooth::application::io::MCP23017>>
I2CTask::init_MCP23017_U1402()
{
    auto device = i2c_master.create_device<MCP23017>(0x21);

    bool res = device->is_present();

    if (res)
    {
        // Port A are all outputs, except GPA7
        // Port B are all outputs

        res = device->configure_device(
                false,// mirror_change_interrupt
                false, // interrupt_polarity_active_high
                0x00, // interrupt_on_change_enable_a
                0x00, // interrupt_control_register_a
                0x00, // interrupt_default_val_a
                0x00, // interrupt_on_change_enable_b,
                0x00, // interrupt_control_register_b,
                0x00  // interrupt_default_val_b
        );

        Log::info(name, Format("Configure U1402: {1}", Bool(res)));

        if (res)
        {
            res = device->configure_ports(
                    // Port A
                    0x80,
                    0x00,
                    0x00,
                    // Port B
                    0x00,
                    0x00,
                    0x00);

            Log::info(name, Format("Configure ports U1402: {1}", Bool(res)));

            device->set_output(MCP23017::Port::B, 0);
        }
    }
    else
    {
        Log::error(name, "U1402 not present");
    }

    return std::make_tuple(res, std::move(device));
}

std::tuple<bool, std::unique_ptr<smooth::application::sensor::BME280>> I2CTask::init_BME280()
{
    bool res = false;
    auto device = i2c_master.create_device<smooth::application::sensor::BME280>(0x76);

    if (device->is_present())
    {
        Log::info(name, Format("BME280 reset: {1}", Bool(device->reset())));

        bool measuring = false;
        bool loading_from_nvm = false;
        while (!device->read_status(measuring, loading_from_nvm) || loading_from_nvm)
        {
            Log::info(name, Format("Waiting for BME280 to complete reset operation... {1} {2}", Bool(measuring),
                                   Bool(loading_from_nvm)));
        }

        res = device->configure_sensor(BME280::SensorMode::Normal,
                                       BME280::OverSampling::Oversamplingx1,
                                       BME280::OverSampling::Oversamplingx1,
                                       BME280::OverSampling::Oversamplingx1,
                                       BME280::StandbyTimeMS::ST_1000,
                                       BME280::FilterCoeff::FC_OFF);

        Log::info(name, Format("Configure BME280: {1}", Bool(res)));

        if (res)
        {
            Log::info(name, Format("BME280 initialized, ID: {1}", Hex<uint8_t>(device->read_id())));
        }
        else
        {
            Log::error(name, "Could not init BME280");
        }
    }
    else
    {
        Log::info(name, "BME280 not present");
    }

    return std::make_tuple(res, std::move(device));
}

