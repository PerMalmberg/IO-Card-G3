#pragma once

#include "DataListener.h"
#include <smooth/application/network/http/websocket/WebsocketServer.h>

namespace http
{
    class WSDataConnection : public smooth::application::network::http::websocket::WebsocketServer, public DataListener
    {
        public:
            WSDataConnection(smooth::application::network::http::IServerResponse& response, smooth::core::Task& task)
                    : WebsocketServer(response, task),
                      DataListener(task)
            {
            }

            void
            data_received(bool first_part, bool last_part, bool is_text, const std::vector<uint8_t>& data) override;

            void event(const AnalogValue& value) override;
            void event(const DigitalValue& value) override;
            void event(const SensorValue& value) override;
            void event(const DigitalOutputValue& value) override;
            void event(const DigitalStatusOutputValue& value) override;
            void event(const g3::alarm::event::SensorTriggered& value) override;
            void event(const g3::alarm::event::SensorRestored& value) override;
        private:
            std::stringstream ss{};
    };
}