#pragma once
#include "constants.h"

/* Defines how long the activity LED will stay on before turning off without
 * activity. Increasing this value from around 100ms to 250ms will make it
 * appear mostly solid.
 */
#define ACTIVITY_DELAY 50
#define ACTIVITY_DECAY 5

/* Defines how long a channel will stay lit after a MIDI-message has been
 * received. Not as exact, but for people who don't like too much flickering
 * this is a good thing.
 */
#define CHANNEL_DELAY 250

/* Button debounce delay, meaning that a switch needs to be stable for at
 * least this many milliseconds before we recognize it as a valid press. 
 */
#define DEBOUNCE_DELAY 50

/* Defines the analog values used with the LEDs, these may need tweaking if
 * the "LOW" settings fails to light up your LEDs. Note that the channel LED
 * brightness have their values reversed are they're controlling the output
 * signal on the shift registers.
 */
#define LED_ACT_HIGH 255
#define LED_ACT_MEDIUM 64
#define LED_ACT_LOW 16
#define LED_ACT_OFF 0

#define LED_CHANNEL_LOW 254
#define LED_CHANNEL_MEDIUM 240
#define LED_CHANNEL_HIGH 0