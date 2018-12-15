#include "Sntp.h"
#include <chrono>
#include <smooth/core/ipc/Publisher.h>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/string_util.h>
#include "io/digital/I2CSetOutputCmd.h"
#include "io/led_pin_output_number.h"

using namespace std::chrono;
using namespace smooth::core::ipc;
using namespace smooth::core::json;
using namespace smooth::core::logging;

namespace g3
{
    namespace network
    {
        static const char* name = "SNTP";

        Sntp::Sntp(smooth::core::Task &task) :
            task(task),
            sntp_queue("sntp_queue", 1, task, *this),
            sntp_timer(smooth::core::timer::Timer::create("sntp", 1, sntp_queue, true, seconds{10}))
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
                for(int i = 0; i < configured_servers.get_array_size(); ++i)
                {
                    const auto& s = configured_servers[i].get_string("");
                    if(!s.empty())
                    {
                        Log::info(name, Format("SNTP server: {1}", Str(s)));
                        servers.push_back(s);
                    }
                }

                if(servers.size() > 0 )
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
                Log::info(name, Format("Time set: {1}", Str(asctime(&time))));
                Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit{I2CDevice::status, SNTP_TIME_SET, sntp->is_time_set()});
                sntp_timer->stop();
            }
            else
            {
                Log::info(name, "Waiting for time to be set");
            }
        }

        void Sntp::write_default() const
        {
            JsonFile server{"/sdcard/sntp.jsn"};
            auto& v = server.value();
            auto configured_servers = v["sntp_servers"];
            
            std::vector <std::string> servers{};
            if( configured_servers.get_array_size() == 0)
            {        
                // Write default config.
                configured_servers[0] = "";
                server.save();
            }
        }
    }
}