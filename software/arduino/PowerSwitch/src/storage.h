#pragma once
#include <Arduino.h>

int storage_checksum();
void clear_settings();
void restore_settings();
void store_settings();
void dump_settings();