#include <Arduino.h>
#include <MIDI.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "settings.h"
#include "led_control.h"
#include "functions.h"

// extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;
extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial, DeviceBaudRateSettings>> MIDI_DEVICE;

namespace mode_debugger {
  void init() {
    Serial.begin(get_baud_rate());
    Serial.print(APP_TITLE);
    Serial.print(' ');
    Serial.println(APP_VERSION);

    MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);
    // MIDI_DEVICE.turnThruOn();
  }

  void print_channel(const int channel) {
    Serial.print(F("Ch"));
    if (channel <= 9) {
      Serial.print(' ');
    }
    Serial.print(channel);
    Serial.print(' ');
  }

  /* Prints a byte of data in hex, padding out to 2 digits.
   */
  void print_data(const byte data) {
    if (data <= 0xf) Serial.print('0');
    Serial.print(data, HEX);
  }

  /* Prints a byte of data in decimal, pad out to 3 digits.
   */
  void print_byte(const byte data) {
    if (data <= 99) Serial.print(' ');
    if (data <= 9) Serial.print(' ');
    Serial.print(data);
  }

  #ifdef DEBUG_NOTE_DETAILS
    /* Prints a textual description of the ISO note names as sent to the device,
    * this was transcribed from the table at:
    * https://homes.luddy.indiana.edu/donbyrd/Teach/MusicalPitchesTable.htm
    */
    void print_note_details(const byte pitch, const byte velocity) {
      Serial.print('[');
      switch (pitch) {
        case 12:  Serial.print(F("C0  ")); break;
        case 13:  Serial.print(F("C#0 ")); break;
        case 14:  Serial.print(F("D0  ")); break;
        case 15:  Serial.print(F("D#0 ")); break;
        case 16:  Serial.print(F("E0  ")); break;
        case 17:  Serial.print(F("F0  ")); break;
        case 18:  Serial.print(F("F#0 ")); break;
        case 19:  Serial.print(F("G0  ")); break;
        case 20:  Serial.print(F("G#0 ")); break;
        case 21:  Serial.print(F("A0  ")); break;
        case 22:  Serial.print(F("A#0 ")); break;
        case 23:  Serial.print(F("B0  ")); break;
        case 24:  Serial.print(F("C1  ")); break;
        case 25:  Serial.print(F("C#1 ")); break;
        case 26:  Serial.print(F("D1  ")); break;
        case 27:  Serial.print(F("D#1 ")); break;
        case 28:  Serial.print(F("E1  ")); break;
        case 29:  Serial.print(F("F1  ")); break;
        case 30:  Serial.print(F("F#1 ")); break;
        case 31:  Serial.print(F("G1  ")); break;
        case 32:  Serial.print(F("G#1 ")); break;
        case 33:  Serial.print(F("A1  ")); break;
        case 34:  Serial.print(F("A#1 ")); break;
        case 35:  Serial.print(F("B1  ")); break;
        case 36:  Serial.print(F("C2  ")); break;
        case 37:  Serial.print(F("C#2 ")); break;
        case 38:  Serial.print(F("D2  ")); break;
        case 39:  Serial.print(F("D#2 ")); break;
        case 40:  Serial.print(F("E2  ")); break;
        case 41:  Serial.print(F("F2  ")); break;
        case 42:  Serial.print(F("F#2 ")); break;
        case 43:  Serial.print(F("G2  ")); break;
        case 44:  Serial.print(F("G#2 ")); break;
        case 45:  Serial.print(F("A2  ")); break;
        case 46:  Serial.print(F("A#2 ")); break;
        case 47:  Serial.print(F("B2  ")); break;
        case 48:  Serial.print(F("C3  ")); break;
        case 49:  Serial.print(F("C#3 ")); break;
        case 50:  Serial.print(F("D3  ")); break;
        case 51:  Serial.print(F("D#3 ")); break;
        case 52:  Serial.print(F("E3  ")); break;
        case 53:  Serial.print(F("F3  ")); break;
        case 54:  Serial.print(F("F#3 ")); break;
        case 55:  Serial.print(F("G3  ")); break;
        case 56:  Serial.print(F("G#3 ")); break;
        case 57:  Serial.print(F("A3  ")); break;
        case 58:  Serial.print(F("A#3 ")); break;
        case 59:  Serial.print(F("B3  ")); break;
        case 60:  Serial.print(F("C4  ")); break;
        case 61:  Serial.print(F("C#4 ")); break;
        case 62:  Serial.print(F("D4  ")); break;
        case 63:  Serial.print(F("D#4 ")); break;
        case 64:  Serial.print(F("E4  ")); break;
        case 65:  Serial.print(F("F4  ")); break;
        case 66:  Serial.print(F("F#4 ")); break;
        case 67:  Serial.print(F("G4  ")); break;
        case 68:  Serial.print(F("G#4 ")); break;
        case 69:  Serial.print(F("A4  ")); break;
        case 70:  Serial.print(F("A#4 ")); break;
        case 71:  Serial.print(F("B4  ")); break;
        case 72:  Serial.print(F("C5  ")); break;
        case 73:  Serial.print(F("C#5 ")); break;
        case 74:  Serial.print(F("D5  ")); break;
        case 75:  Serial.print(F("D#5 ")); break;
        case 76:  Serial.print(F("E5  ")); break;
        case 77:  Serial.print(F("F5  ")); break;
        case 78:  Serial.print(F("F#5 ")); break;
        case 79:  Serial.print(F("G5  ")); break;
        case 80:  Serial.print(F("G#5 ")); break;
        case 81:  Serial.print(F("A5  ")); break;
        case 82:  Serial.print(F("A#5 ")); break;
        case 83:  Serial.print(F("B5  ")); break;
        case 84:  Serial.print(F("C6  ")); break;
        case 85:  Serial.print(F("C#6 ")); break;
        case 86:  Serial.print(F("D6  ")); break;
        case 87:  Serial.print(F("D#6 ")); break;
        case 88:  Serial.print(F("E6  ")); break;
        case 89:  Serial.print(F("F6  ")); break;
        case 90:  Serial.print(F("F#6 ")); break;
        case 91:  Serial.print(F("G6  ")); break;
        case 92:  Serial.print(F("G#6 ")); break;
        case 93:  Serial.print(F("A6  ")); break;
        case 94:  Serial.print(F("A#6 ")); break;
        case 95:  Serial.print(F("B6  ")); break;
        case 96:  Serial.print(F("C7  ")); break;
        case 97:  Serial.print(F("C#7 ")); break;
        case 98:  Serial.print(F("D7  ")); break;
        case 99:  Serial.print(F("D#7 ")); break;
        case 100: Serial.print(F("E7  ")); break;
        case 101: Serial.print(F("F7  ")); break;
        case 102: Serial.print(F("F#7 ")); break;
        case 103: Serial.print(F("G7  ")); break;
        case 104: Serial.print(F("G#7 ")); break;
        case 105: Serial.print(F("A7  ")); break;
        case 106: Serial.print(F("A#7 ")); break;
        case 107: Serial.print(F("B7  ")); break;
        case 108: Serial.print(F("C8  ")); break;
        case 109: Serial.print(F("C#8 ")); break;
        case 110: Serial.print(F("D8  ")); break;
        case 111: Serial.print(F("D#8 ")); break;
        case 112: Serial.print(F("E8  ")); break;
        case 113: Serial.print(F("F8  ")); break;
        case 114: Serial.print(F("F#8 ")); break;
        case 115: Serial.print(F("G8  ")); break;
        case 116: Serial.print(F("G#8 ")); break;
        case 117: Serial.print(F("A8  ")); break;
        case 118: Serial.print(F("A#8 ")); break;
        case 119: Serial.print(F("B8  ")); break;
        case 120: Serial.print(F("C9  ")); break;
        case 121: Serial.print(F("C#9 ")); break;
        case 122: Serial.print(F("D9  ")); break;
        case 123: Serial.print(F("D#9 ")); break;
        case 124: Serial.print(F("E9  ")); break;
        case 125: Serial.print(F("F9  ")); break;
        case 126: Serial.print(F("F#9 ")); break;
        case 127: Serial.print(F("G9  ")); break;
        default:  Serial.print(F("    ")); break;
      }
      Serial.print('(');
      print_byte(pitch);
      Serial.print(')');
      Serial.print(',');
      Serial.print(' ');
      print_byte(velocity);
      Serial.print(']');
    }
  #endif

  #ifdef DEBUG_PITCH_BEND_DETAILS
    void print_pitch_bend_details(const int lsb, const int msb) {
      Serial.print('[');
      int value = (msb << 7) + lsb;
      if (value < 10000) Serial.print(' ');
      if (value < 1000) Serial.print(' ');
      if (value < 100) Serial.print(' ');
      if (value < 10) Serial.print(' ');
      Serial.print(value);
      Serial.print(']');
    }
  #endif

  void loop() {
    if (MIDI_DEVICE.read()) {
      switch (MIDI_DEVICE.getType()) {
        case midi::NoteOn:
          #ifdef DEBUG_NOTE
            print_channel(MIDI_DEVICE.getChannel());
            Serial.print(F("NoteOn   "));
            print_data(MIDI_DEVICE.getType());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData1());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData2());
            #ifdef DEBUG_NOTE_CONVERT
              Serial.print(' ');
              print_note_details(MIDI_DEVICE.getData1(), MIDI_DEVICE.getData2());
            #endif
            Serial.println();
          #endif
          break;

        case midi::NoteOff:
          #ifdef DEBUG_NOTE
            print_channel(MIDI_DEVICE.getChannel());
            Serial.print(F("NoteOff  "));
            print_data(MIDI_DEVICE.getType());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData1());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData2());
            #ifdef DEBUG_NOTE_DETAILS
              Serial.print(' ');
              print_note_details(MIDI_DEVICE.getData1(), MIDI_DEVICE.getData2());
            #endif
            Serial.println();
          #endif
          break;

        case midi::ProgramChange:
          #ifdef DEBUG_PROGRAM_CHANGE
            print_channel(MIDI_DEVICE.getChannel());
            Serial.print(F("PC       "));
            print_data(MIDI_DEVICE.getType());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData1());
            Serial.println();
          #endif
          break;

        case midi::ControlChange:
          #ifdef DEBUG_CONTROL_CHANGE
            print_channel(MIDI_DEVICE.getChannel());
            Serial.print(F("CC       "));
            print_data(MIDI_DEVICE.getType());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData1());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData2());
            Serial.println();
          #endif
          break;

        case midi::PitchBend:
          #ifdef DEBUG_PITCH_BEND
            print_channel(MIDI_DEVICE.getChannel());
            Serial.print(F("PB       "));
            print_data(MIDI_DEVICE.getType());
            Serial.print(' ');
            print_data(MIDI_DEVICE.getData1());
            #ifdef DEBUG_PITCH_BEND_DETAILS
              Serial.print(' ');
              print_pitch_bend_details(MIDI_DEVICE.getData1(), MIDI_DEVICE.getData2());
            #endif
            Serial.println();
          #endif
          break;

        case midi::SystemReset:
          Serial.print(F("     Reset    "));
          print_data(MIDI_DEVICE.getType());
          Serial.println();
          break;

      default:
        // Serial.println(MIDI_DEVICE.getType());
        break;
      }
    }
  }
}