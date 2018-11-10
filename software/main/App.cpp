#include "App.h"

#include <memory>
#include <atomic>
#include <smooth/core/filesystem/MMCSDCard.h>
#include <smooth/core/filesystem/SPISDCard.h>
#include "I2CTask.h"
#include "wifi-creds.h"
#include <smooth/core/ipc/SubscribingTaskEventQueue.h>

namespace g3
{
    App::App()
            : Application(5, std::chrono::seconds{1}),
              digital_status_queue("io_status_queue", 8, *this, *this)
    {}

    void App::init()
    {
        // Initialize I2C
        i2c = std::make_unique<I2CTask>();
        i2c->start();

        // Init appropriate SD Card driver

        // Read device ID

        // Start Wifi

        // Start MQTT

        // Start I2C worker

        // Start Wiegand

        // Start alarm worker
    }

    void App::tick()
    {
    }

    void App::event(const DigitalStatusValue& event)
    {
        if (event.get_name() == "s0")
        {
            use_sd_spi = event.get_value();
            Log::info(name, Format("Using SPI for SD Card: {1}", Bool(use_sd_spi)));
        }
    }
}