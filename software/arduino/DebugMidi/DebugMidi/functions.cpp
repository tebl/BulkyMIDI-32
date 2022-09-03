#include <Arduino.h>
#include "constants.h"

const unsigned long get_baud_rate() {
  int value = (digitalRead(PIN_BAUD_RATE_0) << 1) | digitalRead(PIN_BAUD_RATE_1);
  switch (value) {
    case 0b00000011:
      /* Check if the baud rate pins are shorted vertically, if it is done this
       * way we'll try the highest baud rate. What we're trying to detect is
       * whether one of the previously high values can be pulled low using the
       * other pin (also known as stuff you shouldn't do on an Arduino).
       */
      digitalWrite(PIN_BAUD_RATE_1, LOW);
      pinMode(PIN_BAUD_RATE_1, OUTPUT);
      delay(20);
      if (digitalRead(PIN_BAUD_RATE_0) == LOW) {
        pinMode(PIN_BAUD_RATE_1, INPUT_PULLUP);
        return BAUD_RATE_115200;
      } 

      return BAUD_RATE_38400;
    
    case 0b00000001:
      return BAUD_RATE_19200;

    case 0b00000010:
      return BAUD_RATE_9600;

    case 0b00000000:
      return BAUD_RATE_4800;
  }

  return BAUD_RATE_4800;
}

const bool get_ascii_enabled() {
  return digitalRead(PIN_BIN_ASCII) == LOW;
}

const int get_mode() {
  return MODE_DEBUGGER;
}