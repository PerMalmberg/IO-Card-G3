#pragma once

#include <driver/gpio.h>
#include <cstdint>

constexpr uint8_t BELL_CTRL = 0;
constexpr uint8_t INTERNAL_SIREN_CTRL = 1;
constexpr uint8_t SD_CARD_POWER_CTRL = 2;
constexpr uint8_t SD_CARD_INIT_OK = 3;
constexpr uint8_t SNTP_TIME_SET = 4;
constexpr uint8_t WIFI_CONNECTED = 5;
constexpr uint8_t MQTT_CONNECTED = 6;