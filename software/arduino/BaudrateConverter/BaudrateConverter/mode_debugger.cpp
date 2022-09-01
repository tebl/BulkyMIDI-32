#include <Arduino.h>
#include "constants.h"
#include "commands.h"
#include "process_serial.h"
#include "process_midi.h"
#include "settings.h"

namespace mode_debugger {
  bool ansi_enabled = false;

  unsigned long status_read = 0;
  unsigned long status_read_device = 0;
  unsigned long status_read_computer = 0;
  unsigned int status_read_unknown = 0;
  unsigned int status_read_at_poly = 0;
  unsigned int status_read_note_off = 0;
  unsigned int status_read_note_on = 0;
  unsigned int status_read_cc = 0;
  unsigned int status_read_pc = 0;
  unsigned int status_read_at_ch = 0;
  unsigned int status_read_pb = 0;
  unsigned int status_read_se = 0;
  unsigned int status_read_common = 0;
  unsigned int status_read_realtime = 0;
  unsigned int status_read_as = 0;
  unsigned int status_read_reset = 0;

  bool en_debug = false;
  bool en_note_on = false;
  bool en_note_off = false;
  bool en_note_details = false;
  bool en_pitch_bend = false;
  bool en_pitch_bend_details = false;
  bool en_program_change = false;
  bool en_program_change_details = false;
  bool en_control_change = false;
  bool en_after_touch_poly = false;
  bool en_after_touch_channel = false;
  bool en_system_common = false;
  bool en_realtime = false;
  bool en_reset = false;

  void init() {
    commands_init();
    process_midi_init();
    process_serial_init();

    print_welcome();
    // MIDI_DEVICE.turnThruOn();
  }

  void loop() {
    process_serial();
    process_midi();
  }
}