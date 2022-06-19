#include <Arduino.h>
#include "channel_monitor.h"

#define PIN_DATA 2
#define PIN_CLOCK 3
#define PIN_LATCH 4
#define PIN_OE 5

#define PIN_ACTIVITY 6
#define PIN_MODE_A 7
#define PIN_MODE_B 8
#define PIN_SELECT 9

#define PIN_VU_LEFT 18
#define PIN_VU_RIGHT 19

#define LED_ACT_HIGH 255
#define LED_ACT_MEDIUM 128
#define LED_ACT_LOW 32

#define LED_CHANNEL_LOW 254
#define LED_CHANNEL_MEDIUM 240
#define LED_CHANNEL_HIGH 0

ChannelMonitor channels(PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_OE);

void setup() {
    pinMode(PIN_DATA, OUTPUT);
    pinMode(PIN_CLOCK, OUTPUT);
    pinMode(PIN_LATCH, OUTPUT);
    // digitalWrite(PIN_OE, LOW);
    analogWrite(PIN_OE, LED_CHANNEL_HIGH);
    pinMode(PIN_OE, OUTPUT);

    digitalWrite(PIN_ACTIVITY, LOW);
    analogWrite(PIN_ACTIVITY, LED_ACT_HIGH);
    // digitalWrite(PIN_ACTIVITY, HIGH);
    pinMode(PIN_ACTIVITY, OUTPUT);

    pinMode(PIN_MODE_A, INPUT_PULLUP);
    pinMode(PIN_MODE_B, INPUT_PULLUP);

    pinMode(PIN_SELECT, INPUT_PULLUP);
}

byte data = 0;
unsigned long timer = 0;
void loop() {
    if (millis() > timer) {
        timer = millis() + 2000;
        channels.set_channel(0, true);
        channels.set_channel(9, true);
    }

    channels.tick();
    // digitalWrite(PIN_LATCH, LOW);
    // shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, data);
    // shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, data);
    // digitalWrite(PIN_LATCH, HIGH);
    // data++;
    delay(1);
}