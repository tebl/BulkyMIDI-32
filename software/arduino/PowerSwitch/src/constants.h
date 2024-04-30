#pragma once
// #define DEBUG

#define LED_OFF HIGH
#define LED_ON LOW
#define CHANNEL_ON HIGH
#define CHANNEL_OFF LOW

/* Magic numbers */
#define APP_TITLE "PowerSwitch"
#define APP_VERSION "0.1"

#define LED_MAX 255
#define DEFAULT_DEBOUNCE 50
#define DEFAULT_LONGPRESS 250
#define DEFAULT_DELAY 1000

/* Pin definitions */
#define CH1_SW 2
#define CH1_OUT 21
#define CH2_SW 3
#define CH2_OUT 20
#define CH3_SW 4
#define CH3_OUT 19
#define CH4_SW 5
#define CH4_OUT 18
#define CH5_SW 6
#define CH5_OUT 15

#define SYS_SW 7
#define SYS_LED 10
#define PWR_LED 9
