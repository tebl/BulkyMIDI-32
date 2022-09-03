#pragma once
#include <Arduino.h>

class CustomLED {
    public:
        CustomLED(uint8_t pin, byte decay);
        void tick();
        void boost(int period);
        void enable();
        void clear();
        void flash(const int num_flashes);
        void set_brightness(byte value);
    private:
        uint8_t _pin;
        byte _decay;
        byte value;
        byte real_value;

        unsigned long timer;
};
