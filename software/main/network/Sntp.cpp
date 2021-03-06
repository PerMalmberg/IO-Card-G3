#include "Sntp.h"
#include <chrono>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/string_util.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "hardware_info.h"
#include <smooth/core/filesystem/MountPoint.h>

using namespace std::chrono;
using namespace smooth::core::filesystem;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::logging;

namespace g3::network
{
    static const char* name = "SNTP";

    Sntp::Sntp(smooth::core::Task &task) :
        task(task),
        sntp_queue(SNTPQueue::create(1, task, *this)),
        sntp_timer(1, sntp_queue, true, seconds{10})
    {
    }

    void Sntp::event(const smooth::core::timer::TimerExpiredEvent& ev)
    {
        if (!sntp)
        {
            Log::info(name, "Starting SNTP");
            JsonFile server{"/sdcard/sntp.jsn"};
            auto& v = server.value();
            auto configured_servers = v["sntp_servers"];

            std::vector <std::string> servers{};
            for(const auto & s : configured_servers)
            {
                if(!s.empty())
                {
                    Log::info(name, "SNTP server: {}", s.get<std::string>());
                    servers.push_back(s);
                }
            }

            if(!servers.empty() )
            {
                sntp = std::make_unique<smooth::core::sntp::Sntp>(servers);
                sntp->start();
            }
            else
            {
                Log::info(name, "No SNTP servers configured");
            }

        }
        else if (sntp->is_time_set())
        {
            auto t = system_clock::to_time_t(system_clock::now());
            tm time{};
            localtime_r(&t, &time);
            Log::info(name, "Time set: {}", asctime(&time));
            Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SNTP_TIME_SET, true});
            sntp_timer->stop();
        }
        else
        {
            Log::info(name, "Waiting for time to be set");
        }
    }

    void Sntp::write_default() const
    {
        JsonFile server{SDCardMount::instance().mount_point() / "sntp.jsn"};
        auto& v = server.value();
        auto& configured_servers = v["sntp_servers"];

        std::vector <std::string> servers{};
        if (configured_servers.empty())
        {
            // Write default config.
            configured_servers[0] = "";
            if (!server.save())
            {
                Log::error("SNTP", "Could not write default SNTP config.");
            }
        }
    }
}