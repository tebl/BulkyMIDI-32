#include "custom_led.h"
#include "settings.h"

CustomLED::CustomLED(uint8_t pin, byte max_value) {
    digitalWrite(pin, LOW);
	pinMode(pin, OUTPUT);
	_pin = pin;
    _max_value = max_value;
}

void CustomLED::tick() {
    if (timer > 0 && millis() > timer) {
        digitalWrite(_pin, LOW);
   }
}

void CustomLED::boost(int period) {
    timer = millis() + period;
    if (_max_value > 0) {
        analogWrite(_pin, _max_value);
    } else {
        digitalWrite(_pin, HIGH);
    }
}

void CustomLED::clear(byte channel) {
    digitalWrite(_pin, LOW);
    timer = 0;
}