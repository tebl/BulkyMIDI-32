#include <Arduino.h>
#include <MIDI.h>
#include <ezButton.h>
#include "constants.h"
#include "settings.h"
#include "channel_monitor.h"
#include "custom_led.h"
#include "intro_sequence.h"

CustomLED activity(PIN_ACTIVITY);
ChannelMonitor channels(PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_OE);
ezButton button(PIN_SELECT);
IntroSequence intro(INTRO_STEP);

MIDI_CREATE_DEFAULT_INSTANCE();

void read_settings() {
    Brightness level = Brightness::BRIGHTNESS_MEDIUM;
    if (digitalRead(PIN_MODE_A) == LOW && digitalRead(PIN_MODE_B) == LOW) {
        level = Brightness::BRIGHTNESS_LOW;
    } else if (digitalRead(PIN_MODE_A) == LOW || digitalRead(PIN_MODE_B) == LOW) {
        level = Brightness::BRIGHTNESS_HIGH;
    }

    activity.set_brightness(level);
    channels.set_brightness(level);
}

void setup() {
    activity.boost(50);
    button.setDebounceTime(DEBOUNCE_DELAY);

    pinMode(PIN_MODE_A, INPUT_PULLUP);
    pinMode(PIN_MODE_B, INPUT_PULLUP);
    read_settings();

    MIDI.begin(MIDI_CHANNEL_OMNI);
}

void loop() {
    #if INTRO_STEP > 0
        if (!intro.is_done()) {
            activity.boost(10);

            if (intro.is_ready()) {
                channels.write(intro.get_lsb(), intro.get_msb());
                intro.next();
            } else {
                delay(10);
            }
        } else {
            channels.tick();
        }
    #else
        channels.tick();
    #endif

    button.loop();
    if (button.isPressed()) {
        activity.toggle_brightness();
        activity.boost(1000);
        channels.toggle_brightness();
    }

    activity.tick();
    if (MIDI.read()) {
        intro.abort();

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