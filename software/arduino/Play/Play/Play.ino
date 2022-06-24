#include <Arduino.h>
#include <U8g2lib.h>
#include <RotaryEncoder.h>
#include <ezButton.h>
#include <SdFat.h>
#include <MD_MIDIFile.h>
#include "constants.h"
#include "settings.h"
#include "custom_led.h"

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C oled(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);
CustomLED activity_led(PIN_ACTIVITY, LED_DECAY);
CustomLED system_led(PIN_SYSTEM, LED_DECAY);
ezButton button(PIN_RE_BTN);

#define ICON_PAUSE 210
#define ICON_PLAY  211
#define ICON_PREV  213
#define ICON_NEXT  214
#define ICON_STOP  217
#define ICON_NOTE  225
#define ICON_WARNING  280

void setup() {
  activity_led.boost(2500);
  system_led.boost(2500);
  button.setDebounceTime(DEBOUNCE_DELAY);
  oled.begin();
}

void drawIcon(u8g2_uint_t x, u8g2_uint_t y, const uint8_t  *font, uint16_t glyph) {
  oled.setFont(font);
  oled.drawGlyph(x, y, glyph);
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
    if (pressed) {
      oled.drawStr(x,30,"Click!");
    } else oled.drawStr(x,30,"Hello World!");
    oled.drawLine(0, 0, 127, 0);
    oled.drawLine(0, 31, 127, 31);
    oled.drawLine(0, 0, 0, 31);
    oled.drawLine(127, 0, 127, 31);
    oled.sendBuffer();
    update = false;
  }
}