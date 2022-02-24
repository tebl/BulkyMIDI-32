#include <Arduino.h>
#include "constants.h"

const unsigned int get_baud_rate() {
  pinMode(PIN_BAUD_RATE_0, INPUT_PULLUP);
  pinMode(PIN_BAUD_RATE_1, INPUT_PULLUP);

  int value = (digitalRead(PIN_BAUD_RATE_0) << 1) | digitalRead(PIN_BAUD_RATE_1);
  switch (value) {
    case 0b00000011:
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
  pinMode(PIN_BIN_ASCII, INPUT_PULLUP);
  return digitalRead(PIN_BIN_ASCII) == LOW;
}

const int get_mode() {
  if (get_ascii_enabled()) return MODE_DEBUGGER;
  return MODE_TRANSCEIVER;
}