#include <Arduino.h>
#include "constants.h"

void led_init() {
  digitalWrite(PIN_LED, LOW);
}

/* Set LED state, this just toggles between full value and completely off. */
void set_led(const bool value) {
  digitalWrite(PIN_LED, value ? HIGH : LOW);
}

/* Delay used when spacing out user feedback. Note that this is a blocking
 * function, so it'll probably not be much use when we want to respond to
 * keypresses in due time. */
void flash_delay() { delay(250); }

/* Flash LED specified number of times */
void flash_led(const int num_flashes) {
  for (int i = 0; i < num_flashes; i++) {
  if (i > 0) flash_delay();
      set_led(true);
      flash_delay();
      set_led(false);
  }
}