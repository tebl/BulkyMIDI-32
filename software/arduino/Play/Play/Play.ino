#include <Arduino.h>
#include <U8g2lib.h>
#include <RotaryEncoder.h>
#include <ezButton.h>
#include "constants.h"
#include "settings.h"
#include "custom_led.h"

#define LED_HIGH 255
#define LED_MEDIUM 128
#define LED_LOW 32

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C oled(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);
CustomLED activity_led(PIN_ACTIVITY, ACTIVITY_DECAY);
CustomLED system_led(PIN_SYSTEM, ACTIVITY_DECAY);
ezButton button(PIN_RE_BTN);


void setup() {
  activity_led.boost(2500);
  system_led.boost(2500);
  Serial.begin(9600);
  
  // analogWrite(PIN_SYSTEM, LED_LOW);
  // pinMode(PIN_SYSTEM, OUTPUT);
  oled.begin();
}

int x = 0;
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
    oled.setFont(u8g2_font_amstrad_cpc_extended_8f);
    if (pressed) {
      oled.drawStr(x,12,"Click!");
    } else oled.drawStr(x,12,"Hello World!");
    oled.drawLine(0, 0, 127, 0);
    oled.drawLine(0, 31, 127, 31);
    oled.drawLine(0, 0, 0, 31);
    oled.drawLine(127, 0, 127, 31);
    oled.sendBuffer();
    update = false;
  }
}