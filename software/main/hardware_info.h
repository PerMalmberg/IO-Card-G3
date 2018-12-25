#pragma once

#include <cstdint>

constexpr uint8_t PORTA_0 = 0;              // Port A, 0
constexpr uint8_t SNTP_TIME_SET = 1;        // Port A, 1
constexpr uint8_t PORTA_2 = 2;              // Port A, 2
constexpr uint8_t PORTA_3 = 3;              // Port A, 3
constexpr uint8_t MQTT_CONNECTED = 4;       // Port A, 4
constexpr uint8_t PORTA_5 = 5;              // Port A, 5
constexpr uint8_t PORTA_6 = 6;              // Port A, 6
constexpr uint8_t BELL_CTRL = 8;            // Port B, 0
constexpr uint8_t INTERNAL_SIREN_CTRL = 9;  // Port B, 1
constexpr uint8_t SD_CARD_POWER_CTRL = 10;  // Port B, 2
constexpr uint8_t SD_CARD_INIT_OK = 11;     // Port B, 3
constexpr uint8_t PORTB_4 = 12;             // Port B, 4
constexpr uint8_t PORTB_5 = 13;             // Port B, 5
constexpr uint8_t WIFI_CONNECTED = 14;      // Port B, 6
constexpr uint8_t PORTB_7 = 15;             // Port B, 7


constexpr int DIGITAL_INPUT_COUNT = 8;
constexpr int ANALOG_INPUT_COUNT = 8;
constexpr int DIGITAL_OUTPUT_COUNT = 8;