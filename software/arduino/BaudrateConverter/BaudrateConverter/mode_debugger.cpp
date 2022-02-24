#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "led_control.h"
#include "functions.h"

// extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;
extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial, CustomBaudRateSettings>> MIDI_DEVICE;

namespace mode_debugger {
  void init() {
    Serial.begin(get_baud_rate());
    Serial.print(APP_TITLE);
    Serial.print(' ');
    Serial.println(APP_VERSION);

    MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);
    MIDI_DEVICE.turnThruOn();
  }

  void loop() {
    if (MIDI_DEVICE.read()) {
      switch (MIDI_DEVICE.getType()) {
      case midi::NoteOn:
        Serial.print("Ch ");
        Serial.print(MIDI_DEVICE.getChannel());
        Serial.print(" Note ");
        Serial.print(MIDI_DEVICE.getData1());
        Serial.print(" ON  ");
        Serial.print(MIDI_DEVICE.getData2());
        Serial.println();
        break;

      case midi::NoteOff:
        Serial.print("Ch ");
        Serial.print(MIDI_DEVICE.getChannel());
        Serial.print(" Note ");
        Serial.print(MIDI_DEVICE.getData1());
        Serial.print(" OFF ");
        Serial.print(MIDI_DEVICE.getData2());
        Serial.println();
        break;

      // case midi::ProgramChange:
      //   Serial.print("Ch ");
      //   Serial.print(MIDI_DEVICE.getChannel());
      //   Serial.print(" Program change ");
      //   Serial.println(MIDI_DEVICE.getData1());
      //   break;

      // case midi::ControlChange:
      //   Serial.print("Ch ");
      //   Serial.print(MIDI_DEVICE.getChannel());
      //   Serial.print(" Controller ");
      //   Serial.print(MIDI_DEVICE.getData1());
      //   Serial.print(" value ");
      //   Serial.print(MIDI_DEVICE.getData2());
      //   Serial.println();
      //   break;

      default:
        // Serial.println(MIDI_DEVICE.getType());
        break;
      }
    }
  }
}