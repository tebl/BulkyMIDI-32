#ifndef Settings_H
#define Settings_H
#include "constants.h"

/* Defines how long the activity LED will stay on before turning off without
 * activity. Increasing this value from around 100ms to 250ms will make it
 * appear mostly solid.
 */
#define ACTIVITY_DELAY 250
#define ACTIVITY_BRIGHTNESS LED_ACT_MEDIUM

/* Defines how long a channel will stay lit on a message. Not as exact, but
 * for people who don't like too much flickering this is a good thing.
 */
#define CHANNEL_DELAY 250

#endif