#include "Wifi.h"

#include <smooth/core/json/JsonFile.h>
#include <smooth/core/logging/log.h>
#include <smooth/core/util/string_util.h>

using namespace smooth::core::json;
using namespace smooth::core::util;
using namespace smooth::core::logging;

namespace g3
{    
    static const char* wifi_cfg = "/sdcard/wifi.jsn";

    void Wifi::start()
    {
        JsonFile wifi_creds{wifi_cfg};
        auto& v = wifi_creds.value();

        const auto ssid = v["ssid"].get_string("");
        const auto password = v["password"].get_string("");

        if (!ssid.empty() && !password.empty())
        {
            auto& wifi = app.get_wifi();
            wifi.set_host_name(id.get());
            wifi.set_auto_connect(true);
            wifi.set_ap_credentials(ssid, password);
            wifi.connect_to_ap();
            sntp.start();
        }
    }

    void Wifi::write_default() const
    {
        JsonFile wifi_creds{wifi_cfg};

        if(!wifi_creds.exists())
        {
            auto& v = wifi_creds.value();
            v["ssid"] = "";
            v["password"] = "";
            wifi_creds.save();
        }
    }
}