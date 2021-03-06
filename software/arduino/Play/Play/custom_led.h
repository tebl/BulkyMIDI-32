#pragma once
#include <Arduino.h>
#include "brightness.h"

class CustomLED {
    public:
        CustomLED(uint8_t pin, byte decay);
        void tick();
        void boost(int period);
        void enable();
        void clear();
        void set_brightness(Brightness value);
        void toggle_brightness();
    private:
        uint8_t _pin;
        byte _decay;
        byte value;
        byte real_value;

        unsigned long timer;
        uint8_t _brightness;
};
