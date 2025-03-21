#pragma once
#include <Arduino.h>

enum PlayerState: uint8_t {
    INACTIVE = 0,
    PLAYING = 1,
    PAUSED = 2,
    ERROR = 3,
    MENU = 4,
    INFO = 5
};
