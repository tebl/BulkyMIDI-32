#include <Arduino.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "led_control.h"
#include "functions.h"

extern SoftwareSerial software_serial;

namespace mode_transceiver_compatibility {
  void init() {
    Serial.begin(get_baud_rate());
    Serial1.begin(BAUD_RATE_38400);
    software_serial.begin(BAUD_RATE_31250);

    flash_led(3);
  }

  bool led_state = false; 
  void toggle_led() {
    led_state = !led_state;
    set_led(led_state);
  }


  void loop() {
    if (Serial1.available() > 0) {
      toggle_led();
      software_serial.write(Serial1.read());
    }

    if (software_serial.available() > 0) {
      toggle_led();
      Serial1.write(software_serial.read());
    }
  }
}