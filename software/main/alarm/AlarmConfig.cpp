#include "AlarmConfig.h"

#include <limits>
#include "config_constants.h"
#include <smooth/core/filesystem/MountPoint.h>

using namespace smooth::core::json;
using namespace smooth::core::filesystem;

namespace g3::alarm
{
    static const auto config_file = SDCardMount::instance().mount_point() / "alarm.jsn";

    AlarmConfig::AlarmConfig()
            : f(config_file)
    {
    }

    void AlarmConfig::load()
    {
        f.load();
    }

    void AlarmConfig::write_default() const
    {
        JsonFile f(config_file);
        if (!f.exists())
        {
            auto& v = f.value();
            auto sensors = v[SENSORS];
            auto digital = sensors[DIGITAL];
            auto analog = sensors[ANALOG];

            auto d_input = digital[INPUT];
            auto d_output = digital[OUTPUT];
            auto a_input = analog[INPUT];
            for (int i = 0; i < 8; ++i)
            {
                auto num = std::to_string(i);

                {
                    auto a = a_input[num];
                    a[NAME] = num;
                    a[ENABLED] = false;
                    auto range = a[ALLOWED_RANGE];
                    range[MIN] = 0;
                    range[MAX] = std::numeric_limits<uint16_t>::max();
                    a[ENTRY_DELAY] = 0;
                    a[EXIT_DELAY] = 0;
                }

                {
                    auto d = d_input[num];
                    d[NAME] = num;
                    d[ENABLED] = false;
                    d[ARMED_STATE] = true;
                    d[ENTRY_DELAY] = 0;
                    d[EXIT_DELAY] = 0;
                }

                {
                    auto o = d_output[num];
                    o[NAME] = num;
                    o[ALLOW_EXTERNAL_CONTROL] = false;
                }
            }

            auto section = v[SECTION][0];
            section[NAME] = "all";

            for (int i = 0; i < 8; ++i)
            {
                section[DIGITAL][0] = i;
                section[ANALOG][0] = i;
            }

            auto code_0 = v[CODES][0];
            auto hash_res = ph.hash("123456");
            code_0[USER] = "Default user";
            code_0[VERIFICATION_DATA] = std::get<0>(hash_res) ? std::get<1>(hash_res) : "hashing failed";

            v[TIMING][TIMEOUT][TRIGGERED] = 60;
            v[TIMING][TIMEOUT][TRIGGERED_SILENCE] = 60;

            if(!f.save())
            {
                Log::error("Alarm", "Could not save default config.");
            }
        }
    }
}