#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "led_control.h"
#include "functions.h"
#include "mode_debugger.h"
#include "mode_error.h"

MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings> hardware_serial(Serial);
MIDI_NAMESPACE::MidiInterface<MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER((MIDI_NAMESPACE::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>&)hardware_serial);

SoftwareSerial software_serial = SoftwareSerial(PIN_MIDI_RX, PIN_MIDI_TX);
MIDI_CREATE_INSTANCE(SoftwareSerial, software_serial,  MIDI_DEVICE);
// MIDI_NAMESPACE::MidiInterface<MIDI_NAMESPACE::SerialMIDI<SoftwareSerial, CustomBaudRateSettings>> MIDI_DEVICE((MIDI_NAMESPACE::SerialMIDI<SoftwareSerial, CustomBaudRateSettings>&)software_serial);

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
      MIDI_COMPUTER.begin(MIDI_CHANNEL_OMNI);
      MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);
      break;

    default:
      program_mode = MODE_ERROR;
      error_code = ERROR_UNKNOWN_MODE;
      break;
  }
}

void loop_transceiver() {
  if (MIDI_COMPUTER.read()) {
    MIDI_DEVICE.send(
      MIDI_COMPUTER.getType(),
      MIDI_COMPUTER.getData1(),
      MIDI_COMPUTER.getData2(),
      MIDI_COMPUTER.getChannel()
    );
  }

  if (MIDI_DEVICE.read()) {
    MIDI_COMPUTER.send(
      MIDI_DEVICE.getType(),
      MIDI_DEVICE.getData1(),
      MIDI_DEVICE.getData2(),
      MIDI_DEVICE.getChannel()
    );
  }
}

void loop() {
  switch (program_mode) {
  case MODE_DEBUGGER:
    mode_debugger::loop();
    break;

  case MODE_TRANSCEIVER:
    loop_transceiver();
    break;

  default:
    mode_error::loop();
    break;
  }
}