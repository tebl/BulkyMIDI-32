#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "functions.h"
#include "custom_led.h"

extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;
extern int error_code;
extern CustomLED activity;

namespace mode_error {
  void init() {
    error_code = ERROR_NO_ERROR;
  }

  void loop() {
    activity.flash(error_code);
    delay(2000);
  }
}