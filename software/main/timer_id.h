#pragma once

// Note for anyone reading this: Smooth timer IDs only need to be unique when more than one timer
// is sending to the same listener, but we're keeping them all uniqueue just for good measure.
constexpr const int ALARM_TICK = 1001;
constexpr const int KEYPAD_ENTRY_TIMEOUT = 1002;
constexpr const int PLAYER_ID = 1003;