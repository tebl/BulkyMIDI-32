#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "led_control.h"
#include "functions.h"

extern midi::MidiInterface<midi::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER;
extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;

namespace mode_transceiver {
  void init() {
    MIDI_COMPUTER.begin(MIDI_CHANNEL_OMNI);
    MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);

    flash_led(2);
  }

  bool led_state = false; 
  void toggle_led() {
    led_state = !led_state;
    set_led(led_state);
  }

  void loop() {
    if (MIDI_COMPUTER.read()) {
      toggle_led();
      MIDI_DEVICE.send(
        MIDI_COMPUTER.getType(),
        MIDI_COMPUTER.getData1(),
        MIDI_COMPUTER.getData2(),
        MIDI_COMPUTER.getChannel()
      );
    }

    if (MIDI_DEVICE.read()) {
      toggle_led();
      MIDI_COMPUTER.send(
        MIDI_DEVICE.getType(),
        MIDI_DEVICE.getData1(),
        MIDI_DEVICE.getData2(),
        MIDI_DEVICE.getChannel()
      );
    }
  }
}