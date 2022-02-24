#ifndef _LED_CONTROL_H
#define _LED_CONTROL_H

void led_init();
void flash_led(const int num_flashes);
void set_led(const bool value);
#endif