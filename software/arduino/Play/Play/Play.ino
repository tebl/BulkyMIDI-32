#include <Arduino.h>
#include <RotaryEncoder.h>
#include <ezButton.h>
#include <SPI.h>
#include <SdFat.h>
#include <Wire.h>
#include <SSD1306Ascii.h>
#include <SSD1306AsciiWire.h>
#include <MD_MIDIFile.h>
#include "constants.h"
#include "settings.h"
#include "custom_led.h"
#include "custom_font.h"


enum PlayerState: uint8_t {
    INACTIVE = 0,
    PLAYING = 1,
    PAUSED = 2,
    ERROR = 3
};

SSD1306AsciiWire oled;
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);
CustomLED activity_led(PIN_ACTIVITY, LED_DECAY);
CustomLED system_led(PIN_SYSTEM, LED_DECAY);
ezButton button(PIN_RE_BTN);

SDFAT SD;
MD_MIDIFile SMF;

PlayerState state = PlayerState::INACTIVE;
bool update_oled = true;
unsigned long button_count = 0;
unsigned long button_timer = 0;

/* Called by the MIDIFile library when a file event needs to be processed thru
 * the midi communications interface.
 *
 * This callback is set up in the setup() function.
 */
void midi_callback(midi_event *pev) {
  if ((pev->data[0] >= 0x80) && (pev->data[0] <= 0xe0)) {
    Serial1.write(pev->data[0] | pev->channel);
    Serial1.write(&pev->data[1], pev->size-1);
  } else Serial1.write(pev->data, pev->size);\
}

/* Called by the MIDIFile library when a system Exclusive (sysex) file event
 * needs to be processed through the midi communications interface. Most sysex
 * events cannot really be processed, so we just ignore it here.
 * 
 * This callback is set up in the setup() function.
 */
void sysex_callback(sysex_event *pev) {
}

/* Turn everything off on every channel. Some midi files are badly behaved and
 * leave notes hanging, so between songs turn off all the notes and sound.
 */
void midi_silence(void) {
  midi_event ev;

  // All sound off
  // When All Sound Off is received all oscillators will turn off, and their volume
  // envelopes are set to zero as soon as possible.
  ev.size = 0;
  ev.data[ev.size++] = 0xb0;
  ev.data[ev.size++] = 120;
  ev.data[ev.size++] = 0;

  for (ev.channel = 0; ev.channel < 16; ev.channel++)
    midi_callback(&ev);
}

void setup() {
  Serial1.begin(SERIAL_RATE);
  activity_led.boost(2500);
  button.setDebounceTime(DEBOUNCE_DELAY);

  // Initialize SD
  if (!SD.begin(PIN_SD_SELECT, SPI_FULL_SPEED)) {
    while (true) {
      system_led.enable();
    }
  }
  system_led.clear();

  Wire.begin();
  Wire.setClock(400000L);
  oled.begin(&Adafruit128x32, I2C_ADDRESS);

  // Initialize MIDIFile
  SMF.begin(&SD);
  SMF.setMidiHandler(midi_callback);
  SMF.setSysexHandler(sysex_callback);
}

/* Flash an LED to the beat.
 */
void tick_metronome(void) {
  static uint32_t lastBeatTime = 0;
  static boolean  inBeat = false;
  uint16_t  beatTime;

  beatTime = 60000 / SMF.getTempo();    // msec/beat = ((60sec/min)*(1000 ms/sec))/(beats/min)
  if (!inBeat) {
    if ((millis() - lastBeatTime) >= beatTime) {
      lastBeatTime = millis();
      activity_led.boost(100);
      inBeat = true;
    }
  } else {
    // keep the flash on for 100ms only
    if ((millis() - lastBeatTime) >= 100) {
      activity_led.clear();
      inBeat = false;
    }
  }
}

void show_state() {
  switch (state) {
    case PlayerState::PLAYING:
      oled.println(F("      {"));
      break;

    case PlayerState::PAUSED:
      oled.println(F("      |"));
      break;

    case PlayerState::ERROR:
      oled.println(F("      @"));
      break;

    default:
      oled.println(F("      }"));
      break;
  }
}

void set_state(PlayerState new_state) {
  state = new_state;
  switch (state) {
    case PlayerState::INACTIVE:
      system_led.boost(LED_DELAY);
      break;

    case PlayerState::ERROR:
      system_led.enable();
      break;
    
    default:
      activity_led.boost(LED_DELAY);
      break;
  }
  update_oled = true;
}

void show_error(const __FlashStringHelper *error) {
  set_state(PlayerState::ERROR);
  oled.clear();
  oled.setFont(custom_font);
  oled.println();
  show_state();

  oled.println();
  oled.println(error);
  while (true);
}

void do_play(const char *s) {
  int err = SMF.load(s);
  if (err != MD_MIDIFile::E_OK) {
    set_state(PlayerState::ERROR);
  } else {
    system_led.clear();
    set_state(PlayerState::PLAYING);
  }
}

void do_pause() {
  set_state(PlayerState::PAUSED);
  SMF.pause(true);
  midi_silence();
}

void do_unpause() {
  set_state(PlayerState::PLAYING);
  SMF.pause(false);
}

void do_stop() {
  SMF.close();
  midi_silence();
  set_state(PlayerState::INACTIVE);
}

const char *filename = "POPCORN.MID";
int pos = 0;
void loop() {
  button.loop();
  activity_led.tick();
  system_led.tick();
  encoder.tick();

  /* Encoder input */
  int newPos = encoder.getPosition();
  if (pos != newPos) {
    switch (encoder.getDirection()) {
      case RotaryEncoder::Direction::CLOCKWISE:
        update_oled = true;
        break;
        
      case RotaryEncoder::Direction::COUNTERCLOCKWISE:
        update_oled = true;
        break;

      default:
        break;
    }

    pos = newPos;
  }

  /* Handle player states */
  switch (state) {
    case PlayerState::INACTIVE:
      if (button.isReleased()) {
        do_play(filename);
      }
      break;

    case PlayerState::PLAYING:
      if (button.isPressed()) {
        button_count = button.getCount();
        button_timer = millis() + BUTTON_LONGPRESS;
      }

      if (button.isReleased()) {
        if (button_count == button.getCount()) {
          if (millis() < button_timer) {
            do_pause();   // on short press.
          } else {
            do_stop();    // on long press.
          }
        }
      } else {
        if (!SMF.isEOF()) {
          if (SMF.getNextEvent()) {
            #ifdef ENABLE_METRONOME
              tick_metronome();
            #endif
          }
        } else {
          do_stop();
        }
      }
      break;

    case PlayerState::PAUSED:
      if (button.isPressed()) {
        button_count = button.getCount();
        button_timer = millis() + BUTTON_LONGPRESS;
      }
      
      if (button.isReleased()) {
        if (button_count == button.getCount()) {
          if (millis() < button_timer) {
            do_unpause(); // on short press
          } else {
            do_stop();    // on long press
          }
        }
      }
      break;

    default:
      break;
  }

  /* Update the screen */
  if (update_oled) {
    oled.clear();
    oled.setFont(custom_font);
    oled.println();
    show_state();

    oled.println();
    oled.println(filename);
    update_oled = false;
  }
}