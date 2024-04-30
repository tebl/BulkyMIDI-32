#include <Arduino.h>
#include <EEPROM.h>
#include "constants.h"

#define STORAGE_LENGTH 32
#define STORAGE_BYTES (STORAGE_LENGTH - 1)

#define IDX_CHECKSUM (STORAGE_LENGTH - 1)
#define IDX_DEBOUNCE (STORAGE_LENGTH - 2)
#define IDX_LONGPRESS (STORAGE_LENGTH - 3)

extern const int num_channels;
extern bool channel_states[];

extern byte set_longpress;
extern byte set_debounce;

int storage_checksum() {
    int x = 0;
    for(int i = 0; i < STORAGE_BYTES; i++) {
        x += EEPROM.read(i);
    }
    x = x % 256;
    x = ~x;
    x = x + 1;
    x = x & 0xFF;
    return x;
}

bool checksum_passes() {
    return EEPROM.read(IDX_CHECKSUM) == storage_checksum();
}

void clear_settings() {
    int value = (EEPROM.read(IDX_CHECKSUM) + 1) % 256;
    EEPROM.update(IDX_CHECKSUM, value);
}

void restore_settings() {
    if (checksum_passes()) {
        /* Restore settings */
        for (int i = 0; i < STORAGE_BYTES; i++) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    channel_states[i] = EEPROM.read(i) == 1;
                    break;

                case IDX_LONGPRESS:
                    if (EEPROM.read(i) > 0) set_longpress = EEPROM.read(i) * 10;
                    else set_longpress = DEFAULT_LONGPRESS;
                    break;

                case IDX_DEBOUNCE:
                    if (EEPROM.read(i) > 0) set_debounce = EEPROM.read(i) * 10;
                    else set_debounce = DEFAULT_DEBOUNCE;
                    break;

                default:
                    break;
            }
        }
    } else {
        /* Restore defaults */
        for (int i = 0; i < STORAGE_BYTES; i++) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    channel_states[i] = false;
                    break;

                case IDX_LONGPRESS:
                    set_longpress = DEFAULT_LONGPRESS;
                    break;

                case IDX_DEBOUNCE:
                    set_debounce = DEFAULT_DEBOUNCE;
                    break;

                default:
                    break;
            }
        }
    }
}

void store_settings() {
    for (int i = 0; i < STORAGE_BYTES; i++) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                EEPROM.update(i, channel_states[i] ? 1 : 0);
                break;

            case IDX_LONGPRESS:
                if (set_longpress == 0) EEPROM.update(i, DEFAULT_LONGPRESS / 10);
                else EEPROM.update(i, set_longpress / 10);
                break;

            case IDX_DEBOUNCE:
                if (set_debounce == 0) EEPROM.update(i, DEFAULT_DEBOUNCE / 10);
                else EEPROM.update(i, set_debounce / 10);
                break;

            default:
                EEPROM.update(i, 0);
                break;
        }
    }
    EEPROM.update(IDX_CHECKSUM, storage_checksum());
}

void dump_settings() {
    Serial.print(F("Checksum... "));
    if (checksum_passes()) {
        Serial.println(F("OK"));

        for (int i = 0; i < STORAGE_BYTES; i++) {
            if (i < 100) Serial.print(' ');
            if (i < 10) Serial.print(' ');
            Serial.print(i);
            Serial.print(": ");

            uint8_t value = EEPROM.read(i); 
            if (value < 100) Serial.print(' ');
            if (value < 10) Serial.print(' ');
            Serial.println(value);
        }
    } else {
        Serial.println(F("ERROR"));
    }
}