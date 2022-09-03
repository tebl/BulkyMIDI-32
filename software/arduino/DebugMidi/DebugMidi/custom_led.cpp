#include "custom_led.h"
#include "settings.h"

CustomLED::CustomLED(uint8_t pin, byte decay) {
    digitalWrite(pin, LOW);
	pinMode(pin, OUTPUT);
	_pin = pin;
    _decay = decay;
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
}

void CustomLED::clear() {
    digitalWrite(_pin, LOW);
    timer = 0;
}

/* Flash LED a specified number of times, but note that the sketch will block
 * until we've finished this task.
 */
void CustomLED::flash(const int num_flashes) {
    for (int i = 0; i < num_flashes; i++) {
        if (i > 0) delay(250);

        enable();
        delay(250);
        clear();
    }
}