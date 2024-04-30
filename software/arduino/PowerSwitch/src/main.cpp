#include <Arduino.h>
#include <ezButton.h>
#include "constants.h"
#include "storage.h"

const int num_channels = 5;
ezButton channel_switches[] = {
  ezButton(CH1_SW),
  ezButton(CH2_SW),
  ezButton(CH3_SW),
  ezButton(CH4_SW),
  ezButton(CH5_SW)
};
const int channel_pins[] = { CH1_OUT, CH2_OUT, CH3_OUT, CH4_OUT, CH5_OUT };
unsigned long channel_timers[num_channels];
bool channel_states[num_channels];
ezButton sys(SYS_SW);
unsigned long sys_timer;

byte set_debounce = DEFAULT_DEBOUNCE;
byte set_longpress = DEFAULT_LONGPRESS;

void blink_sys() {
  for (byte i = 0; i < 3; i++) {
    digitalWrite(SYS_LED, LED_ON);
    delay(100);
    digitalWrite(SYS_LED, LED_OFF);
    delay(100);
  }
}

void blink_pwr() {
  for (byte i = 0; i < 3; i++) {
    digitalWrite(PWR_LED, LED_OFF);
    delay(100);
    digitalWrite(PWR_LED, LED_ON);
    delay(100);
  }
}

bool first_enable;
void setup() {
  Serial.begin(115200);
  #ifdef DEBUG
    while (!Serial) { /* spin */ }
  #endif
  restore_settings();

  for (byte i = 0; i < num_channels; i++) {
    channel_switches[i].setDebounceTime(set_debounce);
  }
  sys.setDebounceTime(set_debounce);

  digitalWrite(SYS_LED, LED_OFF);
  pinMode(SYS_LED, OUTPUT);

  first_enable = true;
  pinMode(PWR_LED, OUTPUT);
  analogWrite(PWR_LED, LED_MAX);
  for (byte i = 0; i < num_channels; i++) {
    analogWrite(PWR_LED, LED_MAX - (i * (LED_MAX / num_channels)));
    /* Space out relays energizing */
    if (channel_states[i]) {
      if (first_enable) first_enable = false;
      else delay(DEFAULT_DELAY);
    }

    digitalWrite(channel_pins[i], (channel_states[i] ? CHANNEL_ON : CHANNEL_OFF));
    pinMode(channel_pins[i], OUTPUT);
    channel_timers[i] = 0;
  }
  blink_pwr();
}

void set_channel(const byte channel, bool state) {
  channel_states[channel] = state;
  if (state) {
    digitalWrite(channel_pins[channel], CHANNEL_ON);
  } else {
    digitalWrite(channel_pins[channel], CHANNEL_OFF);
  }
}

bool sys_mode = false;
void loop() {
  sys.loop();
  for (byte i = 0; i < num_channels; i++) {
    channel_switches[i].loop();
  }

  if (sys.isPressed()) {
    sys_mode = true;
    digitalWrite(SYS_LED, LED_ON);
    sys_timer = millis() + set_longpress;
  }

  if (sys.isReleased()) {
    sys_mode = false;
    digitalWrite(SYS_LED, LED_OFF);

    /* Require long press to trigger save */
    if (millis() > sys_timer) {
      delay(100);
      store_settings();
      blink_sys();
    }
  }

  if (sys_mode) {
    /* Actively ignoring other button presses while sys is held */
  } else {
    for (byte i = 0; i < num_channels; i++) {
      if (channel_switches[i].isPressed()) {
        channel_timers[i] = millis() + set_longpress;
      }

      if (channel_switches[i].isReleased()) {
        if (channel_states[i]) {
          /* Require long press to turn off */
          if (millis() > channel_timers[i]) {
            set_channel(i, false);
          }
        } else {
          set_channel(i, true);
        }
      }
    }
  }
}