#include "AlarmConfig.h"

#include <limits>

using namespace smooth::core::json;

namespace g3
{
    static const char* config_file = "/sdcard/alarm.jsn";

    Config::Config()
        : f(config_file)
    {
    }

    void Config::write_default() const
    {
        JsonFile f(config_file);
        if(!f.exists())
        {
            auto& v = f.value();
            auto sensors = v["sensors"];
            auto digital = sensors["digital"];
            auto analog = sensors["analog"];

            auto d_input = digital["input"];
            auto a_input = analog["input"];
            for(int i = 0; i < 8; ++i)
            {
                auto num = std::to_string(i);
                
                {                    
                    auto a = a_input[num];
                    a["name"] = num;
                    a["enabled"] = false;
                    auto range = a["allowed_range"];
                    range["min"] = 0;
                    range["max"] = std::numeric_limits<uint16_t>::max();
                    a["entry_delay"] = 0;
                    a["exit_delay"] = 0;
                }

                {
                    auto d = d_input[num];
                    d["name"] = num;
                    d["enabled"] = false;
                    d["armed_state"] = true;
                    d["entry_delay"] = 0;
                    d["exit_delay"] = 0;
                }
            }

            auto section = v["section"][0];
            section["name"] = "all";

            for(int i = 0; i < 8; ++i)
            {
                section["digital"][0] = i;
                section["analog"][0] = i;
            }

            section["authorized_codes"][0] = 0;

            auto code_0 = v["codes"]["0"];
            auto hash_res = ph.hash("123456");
            code_0["user"] = "name of user";
            code_0["verification_data"] = std::get<0>(hash_res) ? std::get<1>(hash_res) : "hashing failed";

            f.save();
        }
    }
}