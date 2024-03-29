#include <Arduino.h>
#include "constants.h"
#include "settings.h"
#include "commands.h"
#include "functions.h"

/* Process a single received byte that was received over
 * the serial connection to the Arduino Nano, the byte
 * will be automatically echoed back to the terminal
 * application. 
 * 
 * Each line will be processed by its own function, EOL
 * will be interpreted as CR or NL as long as data has
 * previously been received. Any leading spaces will be
 * ignored.
 */
#define MAX_INPUT_SIZE 50

namespace mode_debugger {
  static char input_line[MAX_INPUT_SIZE];
  static unsigned int input_pos = 0;

  void process_serial(const byte byte_in) {
    Serial.print((char) byte_in);
    switch (byte_in) {
      /* Handle backspace character. Echoing will already have
      * moved the cursor back one position, but we'll need to
      * output a space and then move cursor back  again to
      * actually clear the character that was rubbed out.
      */
      case '\b':
        if (input_pos > 0) {
          input_pos--;
          Serial.print(F(" \b"));
        }
        break;

      /* Handle end-of-line, ignore when one of them comes at the
      * start of a line to gracefully handle differences between
      * client platforms differences.
      */
      case '\n':
      case '\r':
        if (input_pos > 0) {
          input_line[input_pos] = 0;
          select_command(input_line);
          input_pos = 0;
        }
        break;

      /* Ignore any leading zeroes */
      case ' ':
      if (input_pos == 0) break;

      /* Add character to current command */
      default:
        if (input_pos < (MAX_INPUT_SIZE - 1)) {
          input_line[input_pos++] = byte_in;
        }
      break;
    }
  }

  void process_serial() {
    while(Serial.available() > 0) {
      process_serial(Serial.read());
    }
  }

  void process_serial_init() {
    Serial.begin(get_baud_rate());
  }
}