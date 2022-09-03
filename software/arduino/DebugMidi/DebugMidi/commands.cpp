#include <Arduino.h>
#include "constants.h"
#include "ansi.h"
#include "debugger_help.h"

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

  void commands_init() {
  }

  void print_version() {
    Serial.print(APP_TITLE);
    Serial.print(' ');
    Serial.println(APP_VERSION);
  }

  void print_welcome() {
    ansi_clear();
    ansi_highlight();
    print_version();
    ansi_default();
  }

  /* Called when a recognized command has been recognized, but before the
  * function is actually called.
  */
  void echo_command(String command) {
    ansi_colour(COLOUR_CYAN);
    Serial.println("> "+ command);
    ansi_default();
  }

  /* Called when the entered command has not been recognized, we don't know
  * what to do next so we'll just print it as an error instead.
  */
  void echo_unknown(String command) {
    ansi_error();
    Serial.println("? " + command);
    ansi_default();
  }

  /* Clear the serial terminal screen, but note that this won't actually do
  * anything unless ANSI terminal codes are supported by the client and
  * have not been explicitly disabled. Does a second echo of the command
  * as the first one will disappear upon execution.
  */
  void do_clear() {
    ansi_clear();
    if (ansi_enabled) echo_command(F("clear"));
  }

  void print_debug_status_line(const __FlashStringHelper *description, bool enabled) {
    Serial.print(' ');
    Serial.print(' ');
    Serial.print(description);
    if (enabled) {
      ansi_notice_ln(F("ON"));
    } else {
      ansi_highlight_ln(F("OFF"));
    }
  }

  void print_debug_status(const bool show_details) {
    Serial.print(F("Debug           "));
    if (en_debug) {
      ansi_notice_ln(F("ON"));
    } else {
      ansi_error_ln(F("OFF"));
    }

    if (show_details) {
      print_debug_status_line(F("NoteOn        "), en_note_on);
      print_debug_status_line(F(" - details    "), en_note_details);
      print_debug_status_line(F("NoteOff       "), en_note_off);
      print_debug_status_line(F(" - details    "), en_note_details);
      print_debug_status_line(F("ControlChange "), en_control_change);
      print_debug_status_line(F("ProgramChange "), en_program_change);
      print_debug_status_line(F(" - details    "), en_program_change_details);
      print_debug_status_line(F("AT. Channel   "), en_after_touch_channel);
      print_debug_status_line(F("AT. Poly      "), en_after_touch_poly);
      print_debug_status_line(F("PitchBend     "), en_pitch_bend);
      print_debug_status_line(F(" - details    "), en_pitch_bend_details);
      print_debug_status_line(F("System Common "), en_system_common);
      print_debug_status_line(F("Realtime      "), en_realtime);
      print_debug_status_line(F("Reset         "), en_reset);
    }
  }

  void print_debug_status() {
    print_debug_status(true);
  }

  void do_debug_on() {
    en_debug = true;
    print_debug_status();
  }

  void do_debug_off() {
    en_debug = false;
    print_debug_status(false);
  }

  void debug_notes() {
    en_debug = true;
    en_note_on = true;
    en_note_details = true;
    print_debug_status(false);
    print_debug_status_line(F("NoteOn        "), en_note_on);
    print_debug_status_line(F("NoteOff       "), en_note_off);
    print_debug_status_line(F(" - details    "), en_note_details);
  }

  void toggle_note_on() {
    en_note_on = !en_note_on;
    print_debug_status_line(F("NoteOn        "), en_note_on);
  }

  void toggle_note_off() {
    en_note_off = !en_note_off;
    print_debug_status_line(F("NoteOff       "), en_note_off);
  }

  void toggle_note_detail() {
    en_note_details = !en_note_details;
    print_debug_status_line(F("NoteOn        "), en_note_on);
    print_debug_status_line(F("NoteOff       "), en_note_off);
    print_debug_status_line(F(" - details    "), en_note_details);
  }

  void toggle_cc() {
    en_control_change = !en_control_change;
    print_debug_status_line(F("ControlChange "), en_control_change);
  }

  void toggle_pc() {
    en_program_change = !en_program_change;
    print_debug_status_line(F("ProgramChange "), en_program_change);
  }

  void toggle_pc_detail() {
    en_program_change_details = !en_program_change_details;
    print_debug_status_line(F("ProgramChange "), en_program_change);
    print_debug_status_line(F(" - details    "), en_program_change_details);
  }

  void toggle_at_ch() {
    en_after_touch_channel = !en_after_touch_channel;
    print_debug_status_line(F("AT. Channel   "), en_after_touch_channel);
  }

  void toggle_at_poly() {
    en_after_touch_poly = !en_after_touch_poly;
    print_debug_status_line(F("AT. Poly      "), en_after_touch_poly);
  }

  void toggle_pb() {
    en_pitch_bend = !en_pitch_bend;
    print_debug_status_line(F("PitchBend     "), en_pitch_bend);
  }

  void toggle_pb_detail() {
    en_pitch_bend_details = !en_pitch_bend_details;
    print_debug_status_line(F("PitchBend     "), en_pitch_bend);
    print_debug_status_line(F(" - details    "), en_pitch_bend_details);
  }

  void toggle_sys() {
    en_system_common = !en_system_common;
    print_debug_status_line(F("System Common "), en_system_common);
  }

  void toggle_real() {
    en_realtime = !en_realtime;
    print_debug_status_line(F("Realtime      "), en_realtime);
  }

  void toggle_reset() {
    en_reset = !en_reset;
    print_debug_status_line(F("Reset         "), en_reset);  }

  void print_status_line(const __FlashStringHelper *description, long value) {
    Serial.print(' ');
    Serial.print(' ');
    Serial.print(description);
    Serial.println(value);
  }

  void print_status() {
    Serial.println(F("Messages by source:"));
    print_status_line(F("Computer      "), status_read_computer);
    print_status_line(F("MIDI          "), status_read_device);
    Serial.println();

    Serial.println(F("Messages processed:"));
    print_status_line(F("NoteOn        "), status_read_note_on);
    print_status_line(F("NoteOff       "), status_read_note_off);
    print_status_line(F("ControlChange "), status_read_cc);
    print_status_line(F("ProgramChange "), status_read_pc);
    print_status_line(F("AT. Channel   "), status_read_at_ch);
    print_status_line(F("AT. Poly      "), status_read_at_poly);
    print_status_line(F("PitchBend     "), status_read_pb);
    print_status_line(F("System Common "), status_read_common);
    print_status_line(F("Realtime      "), status_read_realtime);
    print_status_line(F("Reset         "), status_read_reset);
    if (status_read_unknown > 0) ansi_error();
    print_status_line(F("Unknown type  "), status_read_unknown);
    ansi_default();
    print_status_line(F("Processed     "), status_read);
  }

  void clear_status() {
    status_read = 0;
    status_read_device = 0;
    status_read_computer = 0;
    status_read_unknown = 0;
    status_read_at_poly = 0;
    status_read_note_off = 0;
    status_read_note_on = 0;
    status_read_cc = 0;
    status_read_pc = 0;
    status_read_at_ch = 0;
    status_read_pb = 0;
    status_read_se = 0;
    status_read_common = 0;
    status_read_realtime = 0;
    status_read_as = 0;
    status_read_reset = 0;    
  }

  /*
  * Handle serial commands, mainly just matches the name and if it does the
  * supplied function is run. Recognized commands are echoed back to the user.
  */
  bool handle_command(String command, String name, void (*function)(), bool suppress_echo = false) {
    if (command == name) {
      echo_command(command);
      (*function)();
      return true;
    }
    return false;
  }

  void select_command_main(String command) {
         if (handle_command(command, F("ansi"), ansi_status));
    else if (handle_command(command, F("ansi on"), ansi_on));
    else if (handle_command(command, F("ansi off"), ansi_off));
    else if (handle_command(command, F("ansi test"), ansi_test));
    else if (handle_command(command, F("clear"), do_clear));
    else if (handle_command(command, F("debug"), print_debug_status));
    else if (handle_command(command, F("debug on"), do_debug_on));
    else if (handle_command(command, F("debug off"), do_debug_off));
    else if (handle_command(command, F("debug notes"), debug_notes));
    else if (handle_command(command, F("toggle note_on"), toggle_note_on));
    else if (handle_command(command, F("toggle note_off"), toggle_note_off));
    else if (handle_command(command, F("toggle note_detail"), toggle_note_detail));
    else if (handle_command(command, F("toggle cc"), toggle_cc));
    else if (handle_command(command, F("toggle pc"), toggle_pc));
    else if (handle_command(command, F("toggle pc_detail"), toggle_pc_detail));
    else if (handle_command(command, F("toggle at_ch"), toggle_at_ch));
    else if (handle_command(command, F("toggle at_poly"), toggle_at_poly));
    else if (handle_command(command, F("toggle pb"), toggle_pb));
    else if (handle_command(command, F("toggle pb_detail"), toggle_pb_detail));
    else if (handle_command(command, F("toggle sys"), toggle_sys));
    else if (handle_command(command, F("toggle real"), toggle_real));
    else if (handle_command(command, F("toggle reset"), toggle_reset));
    else if (handle_command(command, F("help"), print_help));
    else if (handle_command(command, F("status"), print_status));
    else if (handle_command(command, F("status clear"), clear_status));
    else if (handle_command(command, F("version"), print_version));
    else {
      echo_unknown(command);
    }
  }

  /*
  * Run the command associated with the serial command given, compared against
  * all known commands (depending on the currently selected command set).
  */
  void select_command(String command) {
    select_command_main(command);
  }
}