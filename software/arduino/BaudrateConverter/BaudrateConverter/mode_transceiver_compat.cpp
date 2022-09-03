#include <Arduino.h>
#include <SoftwareSerial.h>
#include "constants.h"
#include "settings.h"
#include "functions.h"
#include "custom_led.h"

extern SoftwareSerial software_serial;
extern CustomLED activity;

namespace mode_transceiver_compatibility {
  void init() {
    Serial.begin(USB_BAUD_RATE);
    Serial1.begin(get_baud_rate());
    software_serial.begin(BAUD_RATE_31250);

    activity.flash(3);
  }

  void loop() {
    activity.tick();

    if (Serial1.available() > 0) {
      activity.boost(50);
      software_serial.write(Serial1.read());
    }

    if (software_serial.available() > 0) {
      activity.boost(50);
      Serial1.write(software_serial.read());
    }
  }
}