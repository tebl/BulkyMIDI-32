#pragma once
#include "Arduino.h" 

class ChannelMonitor {
    public:
        ChannelMonitor(uint8_t pin_data, uint8_t pin_clock, uint8_t pin_latch, uint8_t pin_oe);
        void tick();
        void clear();
        void boost_channel(byte channel);
        void clear_channel(byte channel);
        void write(byte lsb, byte msb);
    private:
        byte get_lsb();
        byte get_msb();

        uint8_t _data;
        uint8_t _clock;
        uint8_t _latch;
        uint8_t _oe;

        bool dirty;
        unsigned long _timers[16];
        bool _states[16];
};
