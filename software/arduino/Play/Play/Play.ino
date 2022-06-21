#include <Arduino.h>
#include <U8g2lib.h>
#include <RotaryEncoder.h>

#define PIN_SYSTEM    6
#define PIN_PLAY      7
#define PIN_STOP      8
#define PIN_ACTIVITY  9
#define PIN_NEXT      20     // RE_CLK
#define PIN_RE_BTN    19
#define PIN_PREV      21     // RE_DAT

#define LED_HIGH 255
#define LED_MEDIUM 128
#define LED_LOW 32

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C oled(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);


void setup() {
  Serial.begin(9600);
  
  analogWrite(PIN_SYSTEM, LED_LOW);
  pinMode(PIN_SYSTEM, OUTPUT);

  analogWrite(PIN_ACTIVITY, LED_LOW);
  pinMode(PIN_ACTIVITY, OUTPUT);

  pinMode(PIN_RE_BTN, INPUT_PULLUP);

  oled.begin();
}

int x = 0;
int pos = 0;
bool update = true;
void loop() {
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

  if (update) {
    oled.clearBuffer();
    oled.setFont(u8g2_font_amstrad_cpc_extended_8f);
    oled.drawStr(x,12,"Hello World!");
    oled.drawLine(0, 0, 127, 0);
    oled.drawLine(0, 31, 127, 31);
    oled.drawLine(0, 0, 0, 31);
    oled.drawLine(127, 0, 127, 31);
    oled.sendBuffer();
    update = false;
  }
}