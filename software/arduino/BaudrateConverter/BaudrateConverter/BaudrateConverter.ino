#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "settings.h"
#include "custom_led.h"
#include "functions.h"
#include "mode_error.h"
#include "mode_transceiver.h"
#include "mode_transceiver_compat.h"

MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings> hardware_serial(Serial1);
MIDI_NAMESPACE::MidiInterface<MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER((MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>&)hardware_serial);

SoftwareSerial software_serial = SoftwareSerial(PIN_MIDI_RX, PIN_MIDI_TX);
MIDI_CREATE_INSTANCE(SoftwareSerial, software_serial, MIDI_DEVICE);

CustomLED activity(PIN_LED, LED_DECAY);

int program_mode;
int error_code;

void setup() {
  /* Initialize pins */
  pinMode(PIN_BIN_ASCII, INPUT_PULLUP);
  pinMode(PIN_BAUD_RATE_0, INPUT_PULLUP);
  pinMode(PIN_BAUD_RATE_1, INPUT_PULLUP);

  mode_error::init();
  program_mode = get_mode();

  switch (program_mode) {
    case MODE_TRANSCEIVER:
      mode_transceiver::init();
      break;

    case MODE_COMPATIBILITY:
      mode_transceiver_compatibility::init();
      break;

    default:
      program_mode = MODE_ERROR;
      error_code = ERROR_UNKNOWN_MODE;
      break;
  }
}

void loop() {
  switch (program_mode) {
  case MODE_TRANSCEIVER:
    mode_transceiver::loop();
    break;

  case MODE_COMPATIBILITY:
    mode_transceiver_compatibility::loop();
    break;

  case MODE_ERROR:
  default:
    mode_error::loop();
    break;
  }
}