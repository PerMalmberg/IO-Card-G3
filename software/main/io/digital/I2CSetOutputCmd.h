#pragma once

#include <cstdint>

enum class I2CDevice
{
        status,
        output
};

class I2CSetOutput
{
    public:
        I2CSetOutput() = default;

        /// Represents a command to set the outputs on either one of the MCP23017 devices.
        /// \param status_device The device to set the bit on.
        /// \param io The io number
        /// \param state The desired state
        I2CSetOutput(I2CDevice dev, uint8_t io, bool state)
                : device(dev), io(io), state(state)
        {
        }

        bool is_status_device() const
        {
            return device == I2CDevice::status;
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
        I2CDevice device;
        uint8_t io;
        bool state;
};

class I2CSetOutputBit
{
    public:
        I2CSetOutputBit() = default;

        /// Represents a command to set/clear an output bit on either one of the MCP23017 devices.
        /// \param status_device The device to set the bit on
        /// \param io The but number, 0 indexed
        /// \param state The desired state
        I2CSetOutputBit(I2CDevice dev, uint8_t bit, bool state)
        : device(dev), bit(bit), state(state)
        {
        }

        bool is_status_device() const
        {
            return device == I2CDevice::status;
        }

        uint8_t get_bit() const
        {
            return bit;
        }

        bool get_state() const
        {
            return state;
        }

    private:
        I2CDevice device;
        uint8_t bit;
        bool state;
};