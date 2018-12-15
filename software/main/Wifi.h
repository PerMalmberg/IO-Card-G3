#pragma once

#include <smooth/core/Application.h>
#include "DeviceId.h"
#include "Sntp.h"

namespace g3
{
    class Wifi
    {
        public:
            Wifi(smooth::core::Application& app, DeviceId& id, Sntp& sntp)
                : app(app), id(id), sntp(sntp)
            {
            }

            void start();
            void write_default() const;

        private:
            smooth::core::Application& app;
            DeviceId& id;
            Sntp& sntp;
    };
}