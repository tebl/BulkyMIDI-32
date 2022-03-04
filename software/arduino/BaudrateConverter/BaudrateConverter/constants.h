#include <MIDI.h>

#ifndef _CONSTANTS_H
#define _CONSTANTS_H

  /* Magic numbers */
  #define APP_TITLE "BaudrateConverter"
  #define APP_VERSION "0.2"

  #define BAUD_RATE_115200 115200
  #define BAUD_RATE_38400 38400
  #define BAUD_RATE_31250 31250       // MIDI-specific baud rate
  #define BAUD_RATE_19200 19200
  #define BAUD_RATE_9600 9600
  #define BAUD_RATE_4800 4800
  #define BAUD_RATE_MIDI BAUD_RATE_31250

  #define TERMINAL_COLS 80

  #define MODE_TRANSCEIVER 0
  #define MODE_DEBUGGER 1
  #define MODE_ERROR 2

  #define ERROR_NO_ERROR 1
  #define ERROR_UNKNOWN_MODE 2

  /* Pin definitions */
  #define PIN_MIDI_RX 18
  #define PIN_MIDI_TX 19

  #define PIN_BIN_ASCII 5
  #define PIN_BAUD_RATE_0 6
  #define PIN_BAUD_RATE_1 7
  #define PIN_LED 13

  struct ComputerBaudRateSettings : public MIDI_NAMESPACE::DefaultSerialSettings {
    static const long BaudRate = BAUD_RATE_38400;
  };
#endif