#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "settings.h"
#include "functions.h"
#include "custom_led.h"

extern midi::MidiInterface<midi::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER;
extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;
extern CustomLED activity;

namespace mode_transceiver {
  void init() {
    Serial.begin(USB_BAUD_RATE);

    MIDI_COMPUTER.begin(MIDI_CHANNEL_OMNI);
    MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);

    activity.flash(2);
  }

  void loop() {
    activity.tick();

    if (MIDI_COMPUTER.read()) {
      activity.boost(50);
      MIDI_DEVICE.send(
        MIDI_COMPUTER.getType(),
        MIDI_COMPUTER.getData1(),
        MIDI_COMPUTER.getData2(),
        MIDI_COMPUTER.getChannel()
      );
    }

    if (MIDI_DEVICE.read()) {
      activity.boost(50);
      MIDI_COMPUTER.send(
        MIDI_DEVICE.getType(),
        MIDI_DEVICE.getData1(),
        MIDI_DEVICE.getData2(),
        MIDI_DEVICE.getChannel()
      );
    }
  }
}