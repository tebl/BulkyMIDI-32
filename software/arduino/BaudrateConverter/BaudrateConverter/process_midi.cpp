#include <Arduino.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "commands.h"
#include "settings.h"

extern midi::MidiInterface<midi::SerialMIDI<HardwareSerial, ComputerBaudRateSettings>> MIDI_COMPUTER;
extern midi::MidiInterface<midi::SerialMIDI<SoftwareSerial>> MIDI_DEVICE;

namespace mode_debugger {
  extern bool ansi_enabled;

  extern unsigned long status_read;
  extern unsigned long status_read_device;
  extern unsigned long status_read_computer;
  extern unsigned int status_read_unknown;

  extern unsigned int status_read_at_poly;
  extern unsigned int status_read_note_off;
  extern unsigned int status_read_note_on;
  extern unsigned int status_read_cc;
  extern unsigned int status_read_pc;
  extern unsigned int status_read_at_ch;
  extern unsigned int status_read_pb;
  extern unsigned int status_read_se;
  extern unsigned int status_read_common;
  extern unsigned int status_read_realtime;
  extern unsigned int status_read_as;
  extern unsigned int status_read_reset;

  extern bool en_debug;
  extern bool en_note_on;
  extern bool en_note_off;
  extern bool en_note_details;
  extern bool en_pitch_bend;
  extern bool en_pitch_bend_details;
  extern bool en_program_change;
  extern bool en_program_change_details;
  extern bool en_control_change;
  extern bool en_after_touch_poly;
  extern bool en_after_touch_channel;
  extern bool en_system_common;
  extern bool en_realtime;
  extern bool en_reset;

  void process_midi_init() {
    #ifdef DEBUG_NOTE_ON
      en_note_on = true;
    #endif
    #ifdef DEBUG_NOTE_OFF
      en_note_off = true;
    #endif
    #ifdef DEBUG_NOTE_DETAILS
      en_note_details = true;
    #endif
    #ifdef DEBUG_PITCH_BEND
      en_pitch_bend = true;
    #endif
    #ifdef DEBUG_PITCH_BEND_DETAILS
      en_pitch_bend_details = true;
    #endif
    #ifdef DEBUG_PROGRAM_CHANGE
      en_program_change = true;
    #endif
    #ifdef DEBUG_PROGRAM_CHANGE_DETAILS
      en_program_change_details = true;
    #endif
    #ifdef DEBUG_CONTROL_CHANGE
      en_control_change = true;
    #endif
    #ifdef DEBUG_AFTER_TOUCH_POLY
      en_after_touch_poly = true;
    #endif
    #ifdef DEBUG_AFTER_TOUCH_CHANNEL
      en_after_touch_channel = true;
    #endif
    #ifdef DEBUG_SYSTEM_COMMON
      en_system_common = true;
    #endif
    #ifdef DEBUG_REALTIME
      en_realtime = true;
    #endif
    #ifdef DEBUG_RESET
      en_reset = true;
    #endif

    MIDI_DEVICE.begin(MIDI_CHANNEL_OMNI);
    MIDI_COMPUTER.begin(MIDI_CHANNEL_OMNI);
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

  /* MIDI library strips out the channel value from the status byte, so we'll
   * just recalculate it.
   */
  void print_status_byte(const byte type, const byte channel) {
    print_data(type + (channel - 1));
  }

  /* Prints a byte of data in decimal, pad out to 3 digits.
   */
  void print_byte(const byte data) {
    if (data <= 99) Serial.print(' ');
    if (data <= 9) Serial.print(' ');
    Serial.print(data);
  }

  /* Prints a textual description of the ISO note names as sent to the device,
  * this was transcribed from the table at:
  * https://homes.luddy.indiana.edu/donbyrd/Teach/MusicalPitchesTable.htm
  */
  void print_note_details(const byte key, const byte velocity) {
    Serial.print('[');
    switch (key) {
      case 12:  Serial.print(F("C0 ")); break;
      case 13:  Serial.print(F("C#0")); break;
      case 14:  Serial.print(F("D0 ")); break;
      case 15:  Serial.print(F("D#0")); break;
      case 16:  Serial.print(F("E0 ")); break;
      case 17:  Serial.print(F("F0 ")); break;
      case 18:  Serial.print(F("F#0")); break;
      case 19:  Serial.print(F("G0 ")); break;
      case 20:  Serial.print(F("G#0")); break;
      case 21:  Serial.print(F("A0 ")); break;
      case 22:  Serial.print(F("A#0")); break;
      case 23:  Serial.print(F("B0 ")); break;
      case 24:  Serial.print(F("C1 ")); break;
      case 25:  Serial.print(F("C#1")); break;
      case 26:  Serial.print(F("D1 ")); break;
      case 27:  Serial.print(F("D#1")); break;
      case 28:  Serial.print(F("E1 ")); break;
      case 29:  Serial.print(F("F1 ")); break;
      case 30:  Serial.print(F("F#1")); break;
      case 31:  Serial.print(F("G1 ")); break;
      case 32:  Serial.print(F("G#1")); break;
      case 33:  Serial.print(F("A1 ")); break;
      case 34:  Serial.print(F("A#1")); break;
      case 35:  Serial.print(F("B1 ")); break;
      case 36:  Serial.print(F("C2 ")); break;
      case 37:  Serial.print(F("C#2")); break;
      case 38:  Serial.print(F("D2 ")); break;
      case 39:  Serial.print(F("D#2")); break;
      case 40:  Serial.print(F("E2 ")); break;
      case 41:  Serial.print(F("F2 ")); break;
      case 42:  Serial.print(F("F#2")); break;
      case 43:  Serial.print(F("G2 ")); break;
      case 44:  Serial.print(F("G#2")); break;
      case 45:  Serial.print(F("A2 ")); break;
      case 46:  Serial.print(F("A#2")); break;
      case 47:  Serial.print(F("B2 ")); break;
      case 48:  Serial.print(F("C3 ")); break;
      case 49:  Serial.print(F("C#3")); break;
      case 50:  Serial.print(F("D3 ")); break;
      case 51:  Serial.print(F("D#3")); break;
      case 52:  Serial.print(F("E3 ")); break;
      case 53:  Serial.print(F("F3 ")); break;
      case 54:  Serial.print(F("F#3")); break;
      case 55:  Serial.print(F("G3 ")); break;
      case 56:  Serial.print(F("G#3")); break;
      case 57:  Serial.print(F("A3 ")); break;
      case 58:  Serial.print(F("A#3")); break;
      case 59:  Serial.print(F("B3 ")); break;
      case 60:  Serial.print(F("C4 ")); break;
      case 61:  Serial.print(F("C#4")); break;
      case 62:  Serial.print(F("D4 ")); break;
      case 63:  Serial.print(F("D#4")); break;
      case 64:  Serial.print(F("E4 ")); break;
      case 65:  Serial.print(F("F4 ")); break;
      case 66:  Serial.print(F("F#4")); break;
      case 67:  Serial.print(F("G4 ")); break;
      case 68:  Serial.print(F("G#4")); break;
      case 69:  Serial.print(F("A4 ")); break;
      case 70:  Serial.print(F("A#4")); break;
      case 71:  Serial.print(F("B4 ")); break;
      case 72:  Serial.print(F("C5 ")); break;
      case 73:  Serial.print(F("C#5")); break;
      case 74:  Serial.print(F("D5 ")); break;
      case 75:  Serial.print(F("D#5")); break;
      case 76:  Serial.print(F("E5 ")); break;
      case 77:  Serial.print(F("F5 ")); break;
      case 78:  Serial.print(F("F#5")); break;
      case 79:  Serial.print(F("G5 ")); break;
      case 80:  Serial.print(F("G#5")); break;
      case 81:  Serial.print(F("A5 ")); break;
      case 82:  Serial.print(F("A#5")); break;
      case 83:  Serial.print(F("B5 ")); break;
      case 84:  Serial.print(F("C6 ")); break;
      case 85:  Serial.print(F("C#6")); break;
      case 86:  Serial.print(F("D6 ")); break;
      case 87:  Serial.print(F("D#6")); break;
      case 88:  Serial.print(F("E6 ")); break;
      case 89:  Serial.print(F("F6 ")); break;
      case 90:  Serial.print(F("F#6")); break;
      case 91:  Serial.print(F("G6 ")); break;
      case 92:  Serial.print(F("G#6")); break;
      case 93:  Serial.print(F("A6 ")); break;
      case 94:  Serial.print(F("A#6")); break;
      case 95:  Serial.print(F("B6 ")); break;
      case 96:  Serial.print(F("C7 ")); break;
      case 97:  Serial.print(F("C#7")); break;
      case 98:  Serial.print(F("D7 ")); break;
      case 99:  Serial.print(F("D#7")); break;
      case 100: Serial.print(F("E7 ")); break;
      case 101: Serial.print(F("F7 ")); break;
      case 102: Serial.print(F("F#7")); break;
      case 103: Serial.print(F("G7 ")); break;
      case 104: Serial.print(F("G#7")); break;
      case 105: Serial.print(F("A7 ")); break;
      case 106: Serial.print(F("A#7")); break;
      case 107: Serial.print(F("B7 ")); break;
      case 108: Serial.print(F("C8 ")); break;
      case 109: Serial.print(F("C#8")); break;
      case 110: Serial.print(F("D8 ")); break;
      case 111: Serial.print(F("D#8")); break;
      case 112: Serial.print(F("E8 ")); break;
      case 113: Serial.print(F("F8 ")); break;
      case 114: Serial.print(F("F#8")); break;
      case 115: Serial.print(F("G8 ")); break;
      case 116: Serial.print(F("G#8")); break;
      case 117: Serial.print(F("A8 ")); break;
      case 118: Serial.print(F("A#8")); break;
      case 119: Serial.print(F("B8 ")); break;
      case 120: Serial.print(F("C9 ")); break;
      case 121: Serial.print(F("C#9")); break;
      case 122: Serial.print(F("D9 ")); break;
      case 123: Serial.print(F("D#9")); break;
      case 124: Serial.print(F("E9 ")); break;
      case 125: Serial.print(F("F9 ")); break;
      case 126: Serial.print(F("F#9")); break;
      case 127: Serial.print(F("G9 ")); break;
      default:  Serial.print(F("   ")); break;
    }
    Serial.print(' ');
    Serial.print('(');
    print_byte(key);
    Serial.print(')');
    Serial.print(',');
    Serial.print(' ');
    print_byte(velocity);
    Serial.print(']');
  }

  void print_program_change_details(const byte data) {
    Serial.print('[');
    switch (data & 0x7f) {
      case 0:   Serial.print(F("Acoustic Piano 1")); break;
      case 1:   Serial.print(F("Acoustic Piano 2")); break;
      case 2:   Serial.print(F("Acoustic Piano 3")); break;
      case 3:   Serial.print(F("Electric Piano 1")); break;
      case 4:   Serial.print(F("Electric Piano 2")); break;
      case 5:   Serial.print(F("Electric Piano 3")); break;
      case 6:   Serial.print(F("Electric Piano 4")); break;
      case 7:   Serial.print(F("Honkytonk")); break;
      case 8:   Serial.print(F("Electric Organ 1")); break;
      case 9:   Serial.print(F("Electric Organ 2")); break;
      case 10:  Serial.print(F("Electric Organ 3")); break;
      case 11:  Serial.print(F("Electric Organ 4")); break;
      case 12:  Serial.print(F("Pipe Organ 1")); break;
      case 13:  Serial.print(F("Pipe Organ 2")); break;
      case 14:  Serial.print(F("Pipe Organ 3")); break;
      case 15:  Serial.print(F("Accordion")); break;
      case 16:  Serial.print(F("Harpsichord 1")); break;
      case 17:  Serial.print(F("Harpsichord 2")); break;
      case 18:  Serial.print(F("Harpsichord 3")); break;
      case 19:  Serial.print(F("Clavinet 1")); break;
      case 20:  Serial.print(F("Clavinet 2")); break;
      case 21:  Serial.print(F("Clavinet 3")); break;
      case 22:  Serial.print(F("Celesta 1")); break;
      case 23:  Serial.print(F("Celesta 2")); break;
      case 24:  Serial.print(F("Synth Brass 1")); break;
      case 25:  Serial.print(F("Synth Brass 2")); break;
      case 26:  Serial.print(F("Synth Brass 3")); break;
      case 27:  Serial.print(F("Synth Brass 4")); break;
      case 28:  Serial.print(F("Synth Bass 1")); break;
      case 29:  Serial.print(F("Synth Bass 2")); break;
      case 30:  Serial.print(F("Synth Bass 3")); break;
      case 31:  Serial.print(F("Synth Bass 4")); break;
      case 32:  Serial.print(F("Fantasy")); break;
      case 33:  Serial.print(F("Harmo Pan")); break;
      case 34:  Serial.print(F("Chorale")); break;
      case 35:  Serial.print(F("Glasses")); break;
      case 36:  Serial.print(F("Soundtrack")); break;
      case 37:  Serial.print(F("Atmosphere")); break;
      case 38:  Serial.print(F("Warm Bell")); break;
      case 39:  Serial.print(F("Funny Vox")); break;
      case 40:  Serial.print(F("Echo Bell")); break;
      case 41:  Serial.print(F("Ice Rain")); break;
      case 42:  Serial.print(F("Oboe 2001")); break;
      case 43:  Serial.print(F("Echo Pan")); break;
      case 44:  Serial.print(F("Doctor Solo")); break;
      case 45:  Serial.print(F("School Daze")); break;
      case 46:  Serial.print(F("Bellsinger")); break;
      case 47:  Serial.print(F("Square Wave")); break;
      case 48:  Serial.print(F("String Section 1")); break;
      case 49:  Serial.print(F("String Section 2")); break;
      case 50:  Serial.print(F("String Section 3")); break;
      case 51:  Serial.print(F("Pizzicato")); break;
      case 52:  Serial.print(F("Violin 1")); break;
      case 53:  Serial.print(F("Violin 2")); break;
      case 54:  Serial.print(F("Cello 1")); break;
      case 55:  Serial.print(F("Cello 2")); break;
      case 56:  Serial.print(F("Contrabass")); break;
      case 57:  Serial.print(F("Harp 1")); break;
      case 58:  Serial.print(F("Harp 2")); break;
      case 59:  Serial.print(F("Guitar 1")); break;
      case 60:  Serial.print(F("Guitar 2")); break;
      case 61:  Serial.print(F("Electric Guitar 1")); break;
      case 62:  Serial.print(F("Electric Guitar 2")); break;
      case 63:  Serial.print(F("Sitar")); break;
      case 64:  Serial.print(F("Acoustic Bass 1")); break;
      case 65:  Serial.print(F("Acoustic Bass 2")); break;
      case 66:  Serial.print(F("Electric Bass 1")); break;
      case 67:  Serial.print(F("Electric Bass 2")); break;
      case 68:  Serial.print(F("Slap Bass 1")); break;
      case 69:  Serial.print(F("Slap Bass 2")); break;
      case 70:  Serial.print(F("Fretless 1")); break;
      case 71:  Serial.print(F("Fretless 2")); break;
      case 72:  Serial.print(F("Flute 1")); break;
      case 73:  Serial.print(F("Flute 2")); break;
      case 74:  Serial.print(F("Piccolo 1")); break;
      case 75:  Serial.print(F("Piccolo 2")); break;
      case 76:  Serial.print(F("Recorder")); break;
      case 77:  Serial.print(F("Pan Pipes")); break;
      case 78:  Serial.print(F("Sax 1")); break;
      case 79:  Serial.print(F("Sax 2")); break;
      case 80:  Serial.print(F("Sax 3")); break;
      case 81:  Serial.print(F("Sax 4")); break;
      case 82:  Serial.print(F("Clarinet 1")); break;
      case 83:  Serial.print(F("Clarinet 2")); break;
      case 84:  Serial.print(F("Oboe")); break;
      case 85:  Serial.print(F("English Horn")); break;
      case 86:  Serial.print(F("Bassoon")); break;
      case 87:  Serial.print(F("Harmonica")); break;
      case 88:  Serial.print(F("Trumpet 1")); break;
      case 89:  Serial.print(F("Trumpet 2")); break;
      case 90:  Serial.print(F("Trombone 1")); break;
      case 91:  Serial.print(F("Trombone 2")); break;
      case 92:  Serial.print(F("French Horn 1")); break;
      case 93:  Serial.print(F("French Horn 2")); break;
      case 94:  Serial.print(F("Tuba")); break;
      case 95:  Serial.print(F("Brass Section 1")); break;
      case 96:  Serial.print(F("Brass Section 2")); break;
      case 97:  Serial.print(F("Vibe 1")); break;
      case 98:  Serial.print(F("Vibe 2")); break;
      case 99:  Serial.print(F("Synth Mallet")); break;
      case 100: Serial.print(F("Windbell")); break;
      case 101: Serial.print(F("Glock")); break;
      case 102: Serial.print(F("Tube Bell")); break;
      case 103: Serial.print(F("Xylophone")); break;
      case 104: Serial.print(F("Marimba")); break;
      case 105: Serial.print(F("Koto")); break;
      case 106: Serial.print(F("Sho")); break;
      case 107: Serial.print(F("Shakuhachi")); break;
      case 108: Serial.print(F("Whistle 1")); break;
      case 109: Serial.print(F("Whistle 2")); break;
      case 110: Serial.print(F("Bottleblow")); break;
      case 111: Serial.print(F("Breathpipe")); break;
      case 112: Serial.print(F("Timpani")); break;
      case 113: Serial.print(F("Melodic Tom")); break;
      case 114: Serial.print(F("Deep Snare")); break;
      case 115: Serial.print(F("Electric Percussion 1")); break;
      case 116: Serial.print(F("Electric Percussion 2")); break;
      case 117: Serial.print(F("Taiko")); break;
      case 118: Serial.print(F("Taiko Rim")); break;
      case 119: Serial.print(F("Cymbal")); break;
      case 120: Serial.print(F("Castanets")); break;
      case 121: Serial.print(F("Triangle")); break;
      case 122: Serial.print(F("Orche Hit")); break;
      case 123: Serial.print(F("Telephone")); break;
      case 124: Serial.print(F("Bird Tweet")); break;
      case 125: Serial.print(F("One Note Jam")); break;
      case 126: Serial.print(F("Water Bell")); break;
      case 127: Serial.print(F("Jungle Tune")); break;
    }
    Serial.print(' ');
    Serial.print('(');
    print_byte(data);
    Serial.print(')');
    Serial.print(']');
  }

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

  void process_message(const midi::MidiType msg_type, const midi::DataByte msg_data1, const midi::DataByte msg_data2, const midi::Channel msg_channel) {
    switch (msg_type) {
      case midi::AfterTouchPoly:
        status_read += 1;
        status_read_at_poly += 1;
        if (en_debug && en_after_touch_poly) {
          print_channel(msg_channel);
          Serial.print(F("AT. Poly "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.println();
        }
        break;

      case midi::NoteOff:
        status_read += 1;
        status_read_note_off += 1;
        if (en_debug && en_note_off) {
          print_channel(msg_channel);
          Serial.print(F("NoteOff  "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.print(' ');
          print_data(msg_data2);
          if (en_note_details) {
            Serial.print(' ');
            print_note_details(msg_data1, msg_data2);
          }
          Serial.println();
        }
        break;

      case midi::NoteOn:
        status_read += 1;
        status_read_note_on += 1;
        if (en_debug && en_note_on) {
          print_channel(msg_channel);
          Serial.print(F("NoteOn   "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.print(' ');
          print_data(msg_data2);
          if (en_note_details) {
            Serial.print(' ');
            print_note_details(msg_data1, msg_data2);
          }
          Serial.println();
        }
        break;

      case midi::ControlChange:
        status_read += 1;
        status_read_cc += 1;
        if (en_debug && en_control_change) {
          print_channel(msg_channel);
          Serial.print(F("CC       "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.print(' ');
          print_data(msg_data2);
          Serial.println();
        }
        break;

      case midi::ProgramChange:
        status_read += 1;
        status_read_pc += 1;
        if (en_debug && en_program_change) {
          print_channel(msg_channel);
          Serial.print(F("PC       "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          if (en_program_change_details) {
            Serial.print(' ');
            print_program_change_details(msg_data1);
          }
          Serial.println();
        }
        break;

      case midi::AfterTouchChannel:
        status_read += 1;
        status_read_at_ch += 1;
        if (en_debug && en_after_touch_channel) {
          print_channel(msg_channel);
          Serial.print(F("AT. Ch.  "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.println();
        }
        break;

      case midi::PitchBend:
        status_read += 1;
        status_read_pb += 1;
        if (en_debug && en_pitch_bend) {
          print_channel(msg_channel);
          Serial.print(F("PB       "));
          print_status_byte(msg_type, msg_channel);
          Serial.print(' ');
          print_data(msg_data1);
          if (en_pitch_bend_details) {
            Serial.print(' ');
            Serial.print(' ');
            Serial.print(' ');
            Serial.print(' ');
            print_pitch_bend_details(msg_data1, msg_data2);
          }
          Serial.println();
        }
        break;

      case midi::SystemExclusive:
        status_read += 1;
        status_read_se += 1;
        break;

      case midi::TimeCodeQuarterFrame:
        status_read += 1;
        status_read_common += 1;
        if (en_debug && en_system_common) {
          Serial.print(F("     TCQF     "));
          print_data(msg_type);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.println();
        }
        break;

      case midi::SongPosition:
        status_read += 1;
        status_read_common += 1;
        if (en_debug && en_system_common) {
          Serial.print(F("     SongPos. "));
          print_data(msg_type);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.print(' ');
          print_data(msg_data2);
          Serial.println();
        }
        break;

      case midi::SongSelect:
        status_read += 1;
        status_read_common += 1;
        if (en_debug && en_system_common) {
          Serial.print(F("     SongSel. "));
          print_data(msg_type);
          Serial.print(' ');
          print_data(msg_data1);
          Serial.println();
        }
        break;

      case midi::TuneRequest:
        status_read += 1;
        status_read_common += 1;
        if (en_debug && en_system_common) {
          Serial.print(F("     TuneReq. "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::Clock:
        status_read += 1;
        status_read_realtime += 1;
        if (en_debug && en_realtime) {
          Serial.print(F("     Clock    "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::Tick:
        status_read += 1;
        status_read_realtime += 1;
        if (en_debug && en_realtime) {
          Serial.print(F("     Tick     "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::Start:
        status_read += 1;
        status_read_realtime += 1;
        if (en_debug && en_realtime) {
          Serial.print(F("     Start    "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::Continue:
        status_read += 1;
        status_read_realtime += 1;
        if (en_debug && en_realtime) {
          Serial.print(F("     Continue "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::Stop:
        status_read += 1;
        status_read_realtime += 1;
        if (en_debug && en_realtime) {
          Serial.print(F("     Stop     "));
          print_data(msg_type);
          Serial.println();
        }
        break;

      case midi::ActiveSensing:
        // status_read += 1;
        status_read_as += 1;
        break;

      case midi::SystemReset:
        status_read += 1;
        status_read_reset += 1;
        if (en_debug && en_reset) {
          Serial.print(F("     Reset    "));
          print_data(msg_type);
          Serial.println();
        }
        break;

    default:
      status_read_unknown += 1;
      Serial.println(msg_type);
      break;
    }
  }

  void process_midi() {
    if (MIDI_COMPUTER.read()) {
      status_read_computer += 1;
      process_message(MIDI_COMPUTER.getType(), MIDI_COMPUTER.getData1(), MIDI_COMPUTER.getData2(), MIDI_COMPUTER.getChannel());
    }

    if (MIDI_DEVICE.read()) {
      status_read_device += 1;
      process_message(MIDI_DEVICE.getType(), MIDI_DEVICE.getData1(), MIDI_DEVICE.getData2(), MIDI_DEVICE.getChannel());
    }
  }
}