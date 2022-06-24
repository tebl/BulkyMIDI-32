#pragma once
#include "constants.h"

/* Defines how long the LEDs will stay on before turning off without any
 * activity. Increasing this value from around 100ms to 250ms will make it
 * appear mostly solid.
 */
#define LED_DELAY 50
#define LED_DECAY 5

/* Button debounce delay, meaning that a switch needs to be stable for at
 * least this many milliseconds before we recognize it as a valid press. 
 */
#define DEBOUNCE_DELAY 50

/* Defines the analog values used with the LEDs, these may need tweaking if
 * the "LOW" settings fails to light up your LEDs. Note that the channel LED
 * brightness have their values reversed are they're controlling the output
 * signal on the shift registers.
 */
#define LED_HIGH 255
#define LED_MEDIUM 128
#define LED_LOW 32
#define LED_OFF 0