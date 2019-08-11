#include "WSDataConnection.h"
#include <smooth/core/json/Value.h>
#include <smooth/application/network/http/websocket/responses/WSResponse.h>

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
        auto a = v["analog"];
        a["name"] = value.get_name();
        a["value"] = value.get_value();
        a["input"] = value.get_input();
        WSResponse wsr{v.to_string(), true, true};
        //response.reply()
    }

    void WSDataConnection::event(const DigitalValue& value)
    {

    }

    void WSDataConnection::event(const SensorValue& value)
    {

    }

    void WSDataConnection::event(const DigitalOutputValue& value)
    {

    }

    void WSDataConnection::event(const DigitalStatusOutputValue& value)
    {

    }

    void WSDataConnection::event(const g3::alarm::event::SensorTriggered& value)
    {

    }

    void WSDataConnection::event(const g3::alarm::event::SensorRestored& value)
    {

    }
}