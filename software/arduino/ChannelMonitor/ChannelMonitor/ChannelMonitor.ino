#include <Arduino.h>
#include <MIDI.h>
#include "constants.h"
#include "settings.h"
#include "channel_monitor.h"
#include "custom_led.h"

CustomLED activity(PIN_ACTIVITY, ACTIVITY_BRIGHTNESS);
MIDI_CREATE_DEFAULT_INSTANCE();
ChannelMonitor channels(PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_OE);

void setup() {
    activity.boost(2500);

    pinMode(PIN_MODE_A, INPUT_PULLUP);
    pinMode(PIN_MODE_B, INPUT_PULLUP);

    pinMode(PIN_SELECT, INPUT_PULLUP);

    MIDI.begin(MIDI_CHANNEL_OMNI);
}

void loop() {
    activity.tick();
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
                activity.boost(ACTIVITY_DELAY);
                break;
            default:
                break;
        }
    }
}