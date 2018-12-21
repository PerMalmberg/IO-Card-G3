#include "DeviceId.h"
#include <random>
#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/string_util.h>

using namespace smooth::core::json;
using namespace smooth::core::util;
using namespace smooth::core::logging;

namespace g3
{
    static const char* id_file = "/sdcard/dev_id.jsn";

    const std::string& DeviceId::get()
    {
        if(id.empty())
        {
            JsonFile f{id_file};
            auto& v = f.value();

            id = v["device_id"].get_string("");
            trim(id);

            if (id.empty())
            {
                id = generate();
                v["device_id"] = id;
                f.save();
            }

            Log::info("Device ID", id);
        }
        
        return id;
    }

    void DeviceId::write_default() const
    {    
        JsonFile f{id_file};

        if(!f.exists())
        {
            auto& v = f.value();

            const auto& generated = generate();
            v["device_id"] = generated;
            f.save();

            Log::info("Generated device ID", generated);
        }
    }

    std::string DeviceId::generate() const
    {
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> dis(0x0, 0xF);

        std::stringstream ss;
        for (int i = 0; i < 5; ++i)
        {
            ss << std::setfill('0') << std::setw(2) << std::hex << dis(gen);
        }

        return ss.str();
    }
}