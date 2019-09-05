#include "WSDataConnection.h"
#include <nlohmann/json.hpp>
#include <smooth/core/json/JsonFile.h>
#include <smooth/application/network/http/websocket/responses/WSResponse.h>
#include <smooth/application/network/http/IServerResponse.h>
#include <smooth/core/filesystem/MountPoint.h>
#include <smooth/core/filesystem/Path.h>
#include <chrono>

using namespace smooth::core::json;
using namespace smooth::core::filesystem;
using namespace smooth::application::network::http::websocket::responses;
using json = nlohmann::json;

namespace http
{
    void
    WSDataConnection::data_received(bool first_part, bool last_part, bool is_text, const std::vector<uint8_t>& data)
    {
        try
        {
            if(first_part)
            {
                ss.str("");
            }

            // Never accept more than 1k data
            if (static_cast<std::size_t>(ss.tellp()) + data.size() < 1024)
            {
                for (const auto c : data)
                {
                    ss << static_cast<char>(c);
                }

                if (last_part)
                {
                    Log::info("WSDataConnection", ss.str());

                    json v = json::parse(ss.str());

                    if (v["command"].value("request_config", false))
                    {
                        JsonFile cfg{SDCardMount::instance().mount_point() / "alarm.jsn"};
                        json to_send{};
                        to_send["alarm_config"] = cfg.value();
                        response.reply(std::make_unique<WSResponse>(to_send.dump(), true, true), false);
                    }
                }
            }
            else if (last_part)
            {
                // If too much data, clear when last part is received to place next data first in buffer.
                ss.str("");
            }
        }
        catch(std::exception& ex)
        {
            Log::error("WSDataConnection", ex.what());
        }
    }

    void WSDataConnection::event(const AnalogValue& value)
    {
        json v;
        auto a = v["input"]["analog"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["input"] = value.get_input();
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }

    void WSDataConnection::event(const DigitalValue& value)
    {
        json v;
        auto a = v["input"]["digital"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["input"] = value.get_input();
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }

    void WSDataConnection::event(const SensorValue& value)
    {
        json v;
        auto a = v["sensor"];
        a["humidity"] = value.get_humidity();
        a["pressure"] = value.get_pressure();
        a["temperature"] = value.get_temperature();
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }

    void WSDataConnection::event(const DigitalOutputValue& value)
    {
        json v;
        auto a = v["output"]["digital"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["output"] = value.get_output();
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }

    void WSDataConnection::event(const DigitalStatusOutputValue& value)
    {

    }

    void WSDataConnection::event(const g3::alarm::event::SensorTriggered& value)
    {
        json v;
        auto a = v["sensor"];
        a["triggered"] = true;
        a["name"] = value.get_name();
        a["entry_delay"] = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(
                value.get_entry_delay()).count());
        a["exit_delay"] = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(
                value.get_exit_delay()).count());
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }

    void WSDataConnection::event(const g3::alarm::event::SensorRestored& value)
    {
        json v;
        auto a = v["sensor"];
        a["triggered"] = false;
        a["name"] = value.get_name();
        response.reply(std::make_unique<WSResponse>(v.dump(), true, true), false);
    }
}
