#include "Wifi.h"

#include <smooth/core/json/JsonFile.h>
#include <smooth/core/filesystem/MountPoint.h>

using namespace smooth::core::json;
using namespace smooth::core::util;
using namespace smooth::core::logging;
using namespace smooth::core::filesystem;

namespace g3::network
{
    static const auto wifi_cfg = SDCardMount::instance().mount_point() / "wifi.jsn";

    void Wifi::start()
    {
        JsonFile wifi_creds{wifi_cfg};
        auto& v = wifi_creds.value();

        const auto ssid = v.value("ssid", "");
        const auto password = v.value("password", "");

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

        if (!wifi_creds.exists())
        {
            auto& v = wifi_creds.value();
            v["ssid"] = "";
            v["password"] = "";
            if(!wifi_creds.save())
            {
                Log::error("Wifi", "Could not save default wifi config.");
            }
        }
    }
}