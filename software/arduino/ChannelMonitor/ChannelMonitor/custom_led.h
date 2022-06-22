#pragma once
#include <Arduino.h>
#include "brightness.h"

class CustomLED {
    public:
        CustomLED(uint8_t pin);
        void tick();
        void boost(int period);
        void clear(byte channel);
        void set_brightness(Brightness value);
        void toggle_brightness();
    private:
        uint8_t _pin;
        byte value;

        unsigned long timer;
        uint8_t _brightness;
};
