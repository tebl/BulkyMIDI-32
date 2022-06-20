#include <Arduino.h>
#include <MIDI.h>
#include "constants.h"
#include "settings.h"
#include "channel_monitor.h"

MIDI_CREATE_DEFAULT_INSTANCE();
ChannelMonitor channels(PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_OE);

unsigned long activity_timer = 0;

void boost_activity(int period) {
    activity_timer = millis() + period;
    analogWrite(PIN_ACTIVITY, ACTIVITY_BRIGHTNESS);
}

void setup() {
    digitalWrite(PIN_ACTIVITY, LOW);
    boost_activity(2500);
    pinMode(PIN_ACTIVITY, OUTPUT);

    pinMode(PIN_MODE_A, INPUT_PULLUP);
    pinMode(PIN_MODE_B, INPUT_PULLUP);

    pinMode(PIN_SELECT, INPUT_PULLUP);

    MIDI.begin(MIDI_CHANNEL_OMNI);
}

void loop() {
    if (activity_timer > 0 && millis() > activity_timer) {
        digitalWrite(PIN_ACTIVITY, LOW);
   }

    channels.tick();
    if (MIDI.read()) {
        switch (MIDI.getType()) {
            case midi::NoteOn:              // 0x90
            case midi::NoteOff:             // 0x80
            case midi::AfterTouchPoly:      // 0xA0
            case midi::ControlChange:       // 0xB0
            case midi::ProgramChange:       // 0xC0
            case midi::AfterTouchChannel:   // 0xD0
            case midi::PitchBend:           // 0xE0
                channels.boost_channel(MIDI.getChannel());
                boost_activity(ACTIVITY_DELAY);
                break;
            default:
                break;
        }
    }
}