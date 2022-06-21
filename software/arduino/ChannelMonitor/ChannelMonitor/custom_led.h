#pragma once
#include <Arduino.h>

class CustomLED {
    public:
        CustomLED(uint8_t pin, byte max_value);
        void tick();
        void boost(int period);
        void clear(byte channel);
    private:
        uint8_t _pin;
        byte _max_value;
        byte value;

        unsigned long timer;
};
