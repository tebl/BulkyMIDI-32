#pragma once
#define USB_BAUD_RATE BAUD_RATE_115200

/* Defines how long the LEDs will stay on before turning off without any
* additional activity, as well as how fast it'll decay between the states.
*/
#define LED_DELAY 250
#define LED_DECAY 5

#define LED_BRIGHTNESS 128
#define LED_FLASH_DELAY 200
#define LED_BOOST 200