#include "custom_led.h"
#include "settings.h"

CustomLED::CustomLED(uint8_t pin, byte decay) {
    digitalWrite(pin, LOW);
	pinMode(pin, OUTPUT);
	_pin = pin;
    _decay = decay;
    set_brightness(Brightness::BRIGHTNESS_MEDIUM);
}

void CustomLED::tick() {
    if (timer > 0 && millis() > timer) {
        #if LED_DECAY > 0
            if (real_value > 0) {
                real_value--;
                timer = millis() + _decay;
                analogWrite(_pin, real_value);
            } else {
                timer = 0;
                digitalWrite(_pin, LOW);
            }
        #else
            timer = 0;
            digitalWrite(_pin, LOW);
        #endif
   }
}

void CustomLED::boost(int period) {
    timer = millis() + period;
    real_value = value;
    analogWrite(_pin, real_value);
}

void CustomLED::enable() {
    analogWrite(_pin, value);
    timer = 0;
}

void CustomLED::clear() {
    digitalWrite(_pin, LOW);
    timer = 0;
}

void CustomLED::set_brightness(Brightness level) {
    switch (level) {
        case Brightness::BRIGHTNESS_LOW:
            value = LED_LOW;
            break;

        case Brightness::BRIGHTNESS_MEDIUM:
            value = LED_MEDIUM;
            break;

        case Brightness::BRIGHTNESS_HIGH:
            value = LED_HIGH;
            break;

        default:
            return;
    }
    real_value = value;

    analogWrite(_pin, real_value);
    _brightness = level;
}

void CustomLED::toggle_brightness() {
    uint8_t level = _brightness;
    if (level == Brightness::BRIGHTNESS_HIGH) level = Brightness::BRIGHTNESS_LOW;
    else level++;
    set_brightness((Brightness) level);
}
