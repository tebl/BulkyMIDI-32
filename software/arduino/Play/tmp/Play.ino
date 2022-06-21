#include <Arduino.h>
#include <U8g2lib.h>
#include "rotary_encoder.h"

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

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C oled(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);  //M0/ESP32/ESP8266/mega2560/Uno/Leonardo
RotaryEncoder encoder(PIN_NEXT, PIN_PREV, PIN_RE_BTN);

void setup() {
  Serial.begin(9600);
  
  analogWrite(PIN_SYSTEM, LED_LOW);
  pinMode(PIN_SYSTEM, OUTPUT);

  analogWrite(PIN_ACTIVITY, LED_LOW);
  pinMode(PIN_ACTIVITY, OUTPUT);

  // oled.begin();
}

int x = 0;
void loop() {
  encoder.update();
  if (encoder.is_going_left()) x--;
  if (encoder.is_going_right()) x++; 

  // oled.clearBuffer();
  // oled.setFont(u8g2_font_amstrad_cpc_extended_8f);
  // if (encoder.is_clicking()) {
  //   oled.drawStr(0,12,"Click!");
  // } else {
  //   oled.drawStr(x,12,"Hello World!");
  // }
  // oled.drawLine(0, 0, 127, 0);
  // oled.drawLine(0, 31, 127, 31);
  // oled.drawLine(0, 0, 0, 31);
  // oled.drawLine(127, 0, 127, 31);
  // oled.sendBuffer();
  // delay(1000);
  // put your main code here, to run repeatedly:
}