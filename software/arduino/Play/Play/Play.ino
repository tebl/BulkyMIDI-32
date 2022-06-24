#include <Arduino.h>
#include <U8g2lib.h>
#include <RotaryEncoder.h>
#include <ezButton.h>
#include <SPI.h>
#include <SdFat.h>
#include <MD_MIDIFile.h>
#include "constants.h"
#include "settings.h"
#include "custom_led.h"

#define SERIAL_RATE 31250

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C oled(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);
CustomLED activity_led(PIN_ACTIVITY, LED_DECAY);
CustomLED system_led(PIN_SYSTEM, LED_DECAY);
ezButton button(PIN_RE_BTN);

SDFAT SD;
MD_MIDIFile SMF;

const uint8_t FNAME_SIZE = 13;
const char* MIDI_EXT = ".MID";

/* Called by the MIDIFile library when a file event needs to be processed thru
 * the midi communications interface.
 *
 * This callback is set up in the setup() function.
 */
void midi_callback(midi_event *pev) {
  if ((pev->data[0] >= 0x80) && (pev->data[0] <= 0xe0)) {
    Serial.write(pev->data[0] | pev->channel);
    Serial.write(&pev->data[1], pev->size-1);
  } else {
    Serial.write(pev->data, pev->size);
  }
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
  Serial.begin(SERIAL_RATE);
  activity_led.boost(2500);
  button.setDebounceTime(DEBOUNCE_DELAY);

  // Initialize SD
  if (!SD.begin(PIN_SD_SELECT, SPI_FULL_SPEED)) {
    while (true) {
      system_led.enable();
    }
  }
  oled.begin();

  // Initialize MIDIFile
  SMF.begin(&SD);
  SMF.setMidiHandler(midi_callback);
  SMF.setSysexHandler(sysex_callback);
}

void drawIcon(u8g2_uint_t x, u8g2_uint_t y, const uint8_t  *font, uint16_t glyph) {
  oled.setFont(font);
  oled.drawGlyph(x, y, glyph);
}

/* Flash an LED to the beat.
 */
void tickMetronome(void) {
  static uint32_t lastBeatTime = 0;
  static boolean  inBeat = false;
  uint16_t  beatTime;

  beatTime = 60000/SMF.getTempo();    // msec/beat = ((60sec/min)*(1000 ms/sec))/(beats/min)
  if (!inBeat) {
    if ((millis() - lastBeatTime) >= beatTime)
    {
      lastBeatTime = millis();
      activity_led.enable();
      inBeat = true;
    }
  }
  else
  {
    // keep the flash on for 100ms only
    if ((millis() - lastBeatTime) >= 100) {
      activity_led.clear();
      inBeat = false;
    }
  }
}

int x = 4;
int pos = 0;
bool pressed = false;
bool update = true;
void loop() {
  button.loop();
  pressed = false;

  activity_led.tick();
  system_led.tick();
  encoder.tick();

  int newPos = encoder.getPosition();
  if (pos != newPos) {
    switch (encoder.getDirection()) {
      case RotaryEncoder::Direction::CLOCKWISE:
        x++;
        update = true;
        break;
        
      case RotaryEncoder::Direction::COUNTERCLOCKWISE:
        x--;
        update = true;
        break;

      default:
        break;
    }

    pos = newPos;
  }

  if (button.isPressed()) {
    pressed = true;
    update = true;
  } else if (button.isReleased()) update = true;

  if (update) {
    oled.clearBuffer();
    drawIcon(4, 19, u8g2_font_open_iconic_all_2x_t, ICON_NOTE);
    oled.setFont(u8g2_font_amstrad_cpc_extended_8f);
    // if (pressed) {
    //   oled.drawStr(x,30,"Click!");
    // } else oled.drawStr(x,30,"Hello World!");
    oled.drawLine(0, 0, 127, 0);
    oled.drawLine(0, 31, 127, 31);
    oled.drawLine(0, 0, 0, 31);
    oled.drawLine(127, 0, 127, 31);
    oled.sendBuffer();
    update = false;
  }
}