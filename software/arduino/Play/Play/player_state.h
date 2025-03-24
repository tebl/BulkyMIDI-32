#pragma once
#include <Arduino.h>

enum PlayerState: uint8_t {
    INACTIVE = 0,
    PLAYING = 1,
    PAUSED = 2,
    INTERMISSION = 3,
    ERROR = 4,
    MENU = 5,
    INFO = 6
};
