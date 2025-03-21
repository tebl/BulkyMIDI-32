#pragma once
#include <Arduino.h>

enum MenuOption: uint8_t {
    MENU_PLAY = 0,
    MENU_LOOP = 1,
    MENU_AUTO_PLAY = 2,
    MENU_METRONOME = 3,
    MENU_INFO = 4
};
