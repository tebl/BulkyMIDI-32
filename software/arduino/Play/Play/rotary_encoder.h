#ifndef Rotary_Encoder_h
#define Rotary_Encoder_h

#include "Arduino.h" 
class RotaryEncoder {
    public:
        RotaryEncoder(uint8_t pin_clk, uint8_t pin_dat, uint8_t pin_btn);
        void update();

        bool is_active();
        bool is_going_left();
        bool is_going_right();
        bool is_clicking();
    private:
        uint8_t _clk;
        uint8_t _dat;
        uint8_t _btn;

        int counter = 0;
        int current_clk;
        int last_clk;

        int current_btn;
        unsigned long last_btn_press = 0;

        bool _going_left;
        bool _going_right;
        bool _click;
};

#endif