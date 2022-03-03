#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "led_control.h"
#include "functions.h"

extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;
extern int error_code;

namespace mode_error {
  void init() {
    error_code = ERROR_NO_ERROR;
  }

  void loop() {
    flash_led(error_code);
    delay(1000);
  }
}