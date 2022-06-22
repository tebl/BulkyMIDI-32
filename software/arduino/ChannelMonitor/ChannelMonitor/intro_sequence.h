#pragma once
#include "Arduino.h" 

const PROGMEM uint8_t sequence[] = {
    0b00000000,
    0b00000000,

    0b00000000,
    0b10000001,

    0b00000000,
    0b01000010,

    0b00000000,
    0b00100100,

    0b00000000,
    0b00011000,

    0b00011000,
    0b00000000,

    0b00100100,
    0b00000000,

    0b01000010,
    0b00000000,

    0b10000001,
    0b00000000,

    0b00000000,
    0b10000001,

    0b00000000,
    0b01000010,

    0b00000000,
    0b00100100,

    0b00000000,
    0b00011000,

    0b00011000,
    0b00011000,

    0b00111100,
    0b00111100,

    0b01111110,
    0b01111110,

    0b11111111,
    0b11111111,

    0b10100101,
    0b11111111,

    0b00000000,
    0b10100101,

    0b00000000,
    0b00000000
};
const int sequence_len = sizeof(sequence) / sizeof(sequence[0]);

class IntroSequence {
    public:
        IntroSequence(int delay);
        bool is_done();
        bool is_ready();
        byte get_lsb();
        byte get_msb();
        void next();
        void abort();

    private:
        bool _done;
        int _delay;
        int _step;
        unsigned long _timer;
};
