#pragma once
#include "constants.h"

#define BOOT_SCREEN 3000

/* Defines how long the gap should be before playing the next track when
 * currently playing all of them. Mainly so that the end of one song doesn't
 * go straight into the next one.
 */
#define TRACK_PAUSE 2000

/* Allows the list of tracks to wrap around on autoplay, meaning that we'll
 * loop endlessly as long as no errors are encountered.
 */
#define ENDLESS

/* Defines how long the LEDs will stay on before turning off without any
 * additional activity.
 */
#define LED_DELAY 250
#define LED_DECAY 5

/* MIDI Message activity shown on LEDs, except for when the metronome is
 * being used. Note that it is an indicator of data, ie. instructions instead
 * of music. Uncomment to remove, or increase value to 250 to keep LEDs solid.
 */
#define MIDI_LED 250

/* Button debounce delay, meaning that a switch needs to be stable for at
 * least this many milliseconds before we recognize it as a valid press. 
 */
#define DEBOUNCE_DELAY 50
#define BUTTON_LONGPRESS 250

/* Defines the analog values used with the LEDs, these may need tweaking if
 * the "LOW" settings fails to light up your LEDs. Note that the channel LED
 * brightness have their values reversed are they're controlling the output
 * signal on the shift registers.
 */
#define LED_HIGH 255
#define LED_MEDIUM 128
#define LED_LOW 32
#define LED_OFF 0

#define I2C_ADDRESS 0x3C
