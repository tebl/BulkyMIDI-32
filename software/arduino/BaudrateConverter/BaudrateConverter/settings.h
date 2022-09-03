#pragma once
#define USB_BAUD_RATE BAUD_RATE_115200

/* Defines how long the LEDs will stay on before turning off without any
* additional activity, a value of 1 will give it pulsing presentation -
* increasing past this point will make it appear solid. Set to 0 to have
* it fully flicker on and off instead.
*/
#define LED_DECAY 1

/* Boost value gives an indication of how long the LED should remain on
 * before it starts to decay.
 */
#define LED_BOOST 1

/* Set the maximum brightness to use with the LED. Depending on the
 * efficiency of the part used, you may need to adjust this up and down
 * to suit your own preferences as well as lighting conditions. 
 */
#define LED_BRIGHTNESS 64
#define LED_FLASH_DELAY 200
