#include <Arduino.h>
#include "ansi.h"
#include "constants.h"

namespace mode_debugger {
  /*
  * Calculates the length of a string that has been stored in Flash memory
  * instead of RAM, normally defined using the Arduino F() macro.
  */
  unsigned int flash_length(const __FlashStringHelper *string) {
    const char *ptr = (const char *) string;
    int size = 0;
    while (pgm_read_byte_near(ptr++)) {
      size++;
    }
    return size;
  }

  /*
  * Arduino lacks a way to pad strings, so then I guess we're doing it the 
  * ridiculously hard way instead of leaving things somewhat sensible. Feature
  * creep is a real thing, but doing this for fun, so let's just live with it!
  */
  void help_command(const __FlashStringHelper *command = nullptr, 
                    const __FlashStringHelper *description = nullptr,
                    const __FlashStringHelper *parameter = nullptr,
                    const __FlashStringHelper *switch_ref = nullptr) {
    int size = 0;
    int position = 0;
    if (command != nullptr) {
      size = flash_length(command);
      ansi_notice(command);
    }

    if (parameter != nullptr) {
      size += flash_length(parameter) + 1;
      Serial.print(' ');
      ansi_colour(parameter, COLOUR_WHITE);
    }
    for (int i = size; i < 20; i++) Serial.print(' ');
    position = 20;

    if (description != nullptr) {
      ansi_colour(description, COLOUR_WHITE);
      position += flash_length(description);
    }

    if (switch_ref != nullptr) {
      size = TERMINAL_COLS - flash_length(switch_ref);
      for (int i = position; i < size; i++) Serial.print(' ');
      ansi_colour(switch_ref, COLOUR_MAGENTA);
    }

    Serial.println();
  }

  /*
  * Run the command associated with the serial command given, compared against
  * all known commands (depending on the currently selected command set).
  */
  void print_help() {
    ansi_colour_ln(F("Commands supported:"), COLOUR_MAGENTA);
    help_command(F("ansi on"),            F("Enable ANSI terminal code usage"));
    help_command(F("ansi off"),           F("Disable ANSI terminal code usage"));
    help_command(F("ansi test"),          F("Test ANSI terminal codes on terminal"));
    help_command(F("clear"),              F("Clear screen"));
    help_command(F("debug"),              F("Debugger settings"));
    help_command(F("debug on|off"),       F("Enable/disable output"));
    help_command(F("debug notes"),        F("Enable NoteOn and details"));
    help_command(F("toggle <setting>"),   F("Toggles setting as described below."));
    help_command(F("toggle note_on"),     F(" - NoteOn"));
    help_command(F("toggle note_off"),    F(" - NoteOff"));
    help_command(F("toggle note_detail"), F(" - Note (details)"));
    help_command(F("toggle cc"),          F(" - ControlChange"));
    help_command(F("toggle pc"),          F(" - ProgramChange"));
    help_command(F("toggle pc_detail"),   F(" - ProgramChange (details)"));
    help_command(F("toggle at_ch"),       F(" - Aftertouch Channel"));
    help_command(F("toggle at_poly"),     F(" - Aftertouch Poly"));
    help_command(F("toggle pb"),          F(" - PitchBend"));
    help_command(F("toggle pb_detail"),   F(" - PitchBend (details)"));
    help_command(F("toggle sys"),         F(" - System Common"));
    help_command(F("toggle real"),        F(" - RealTime"));
    help_command(F("toggle reset"),       F(" - Reset"));
    help_command(F("help"),               F("Prints this screen"));
    help_command(F("status"),             F("Show message counters"));
    help_command(F("status clear"),       F("Clear message counters"));
    help_command(F("version"),            F("Prints firmware version"));
  }
}