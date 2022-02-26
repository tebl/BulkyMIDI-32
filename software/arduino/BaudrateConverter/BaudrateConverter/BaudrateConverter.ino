#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "mode_debugger.h"
#include "mode_error.h"
#include "mode_transceiver.h"

MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings> hardware_serial(Serial);
MIDI_NAMESPACE::MidiInterface<MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER((MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>&)hardware_serial);

SoftwareSerial software_serial = SoftwareSerial(PIN_MIDI_RX, PIN_MIDI_TX);
MIDI_NAMESPACE::MidiInterface<MIDI_NAMESPACE::SerialMIDI<SoftwareSerial, DeviceBaudRateSettings>> MIDI_DEVICE((MIDI_NAMESPACE::SerialMIDI<SoftwareSerial, DeviceBaudRateSettings>&)software_serial);

int program_mode;
int error_code = ERROR_NO_ERROR;

void setup() {
  mode_error::init();
  // program_mode = get_mode();
  program_mode = MODE_DEBUGGER;

  switch (program_mode) {
    case MODE_DEBUGGER:
      mode_debugger::init();
      break;
    
    case MODE_TRANSCEIVER:
      mode_transceiver::init();
      break;

    default:
      program_mode = MODE_ERROR;
      error_code = ERROR_UNKNOWN_MODE;
      break;
  }
}

void loop_transceiver() {
}

void loop() {
  switch (program_mode) {
  case MODE_DEBUGGER:
    mode_debugger::loop();
    break;

  case MODE_TRANSCEIVER:
    mode_transceiver::loop();
    break;

  case MODE_ERROR:
  default:
    mode_error::loop();
    break;
  }
}