#include "WSDataConnection.h"
#include <smooth/core/json/Value.h>
#include <smooth/application/network/http/websocket/responses/WSResponse.h>
#include <smooth/application/network/http/IServerResponse.h>
#include <chrono>

using namespace smooth::core::json;
using namespace smooth::application::network::http::websocket::responses;

namespace http
{
    void
    WSDataConnection::data_received(bool first_part, bool last_part, bool is_text, const std::vector<uint8_t>& data)
    {
    }

    void WSDataConnection::event(const AnalogValue& value)
    {
        Value v;
        auto a = v["input"]["analog"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["input"] = value.get_input();
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }

    void WSDataConnection::event(const DigitalValue& value)
    {
        Value v;
        auto a = v["input"]["digital"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["input"] = value.get_input();
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }

    void WSDataConnection::event(const SensorValue& value)
    {
        Value v;
        auto a = v["sensor"];
        a["humidity"] = value.get_humidity();
        a["pressure"] = value.get_pressure();
        a["temperature"] = value.get_temperature();
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }

    void WSDataConnection::event(const DigitalOutputValue& value)
    {
        Value v;
        auto a = v["output"]["digital"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["output"] = value.get_output();
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }

    void WSDataConnection::event(const DigitalStatusOutputValue& value)
    {

    }

    void WSDataConnection::event(const g3::alarm::event::SensorTriggered& value)
    {
        Value v;
        auto a = v["sensor"];
        a["triggered"] = true;
        a["name"] = value.get_name();
        a["entry_delay"] = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(
                value.get_entry_delay()).count());
        a["exit_delay"] = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(
                value.get_exit_delay()).count());
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }

    void WSDataConnection::event(const g3::alarm::event::SensorRestored& value)
    {
        Value v;
        auto a = v["sensor"];
        a["triggered"] = false;
        a["name"] = value.get_name();
        response.reply(std::make_unique<WSResponse>(v.to_string(), true, true), false);
    }
}