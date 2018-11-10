#pragma once

#include <cstdint>

class I2CSetOutput
{
    public:
        I2CSetOutput() = default;

        /// Represents a command to set the outputs on either one of the MCP23017 devices.
        /// \param status_device True if setting output on the status IO device
        /// \param io The io number
        /// \param state The desired state
        I2CSetOutput(bool status_device, uint8_t io, bool state)
                : status_device(status_device), io(io), state(state)
        {
        }

        bool is_status_device() const
        {
            return status_device;
        }

        uint8_t get_io() const
        {
            return io;
        }

        bool get_state() const
        {
            return state;
        }

    private:
        bool status_device;
        uint8_t io;
        bool state;
};