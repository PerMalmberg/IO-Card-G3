# IO-Card G3

This is my custom I/O card, third generation. Main purpose is to serve as an alarm system.

## Hardware features

- 8 analog inputs for detecting changes in resistance (a.k.a balanced line).
- 8 digital inputs, 3.3-24V
- 8 digital outputs, 5/12V, fused.
- Optional BME280
- Wiegand interface
- On-board buzzer.
- SD Card (SPI and MMC bus selectable)
- JTAG debugging (when SD Card is using SPI)
- LED indicators for all input and outputs.
- Screw terminals for all interfaces.
- MCU: ESP32 Wrover Module
- Powered by 12V DC.

## Software features

- Web interface for configuration and status monitoring.
- MQTT for control and monitoring.

## Rendering of the PCG

(sorry, no 3D models for some components)

![PCB Rendering](hardware/pcb-rendering-2018-10-17.png)