#include "channel_monitor.h"

#define DEFAULT_TIMER 500

ChannelMonitor::ChannelMonitor(uint8_t pin_data, uint8_t pin_clock, uint8_t pin_latch, uint8_t pin_oe) {
	pinMode(pin_data, OUTPUT);
	_data = pin_data;

	pinMode(pin_clock, OUTPUT);
	_clock = pin_clock;

	pinMode(pin_latch, OUTPUT);
	_latch = pin_latch;

	pinMode(pin_oe, OUTPUT);
	_oe = pin_oe;

    clear();
}

byte ChannelMonitor::get_lsb() {
    byte result = 0;
    for (int ch = 0; ch < 8; ch++){
        if (_states[ch]) {
            result |= (1 << ch);
        }
    }
    return result;
}

byte ChannelMonitor::get_msb() {
    byte result = 0;
    for (int ch = 0; ch < 8; ch++){
        if (_states[ch + 8]) {
            result |= (1 << ch);
        }
    }
    return result;
}

void ChannelMonitor::tick() {
    for (int channel = 0; channel < 16; channel++) {
        if (_states[channel] && millis() > _timers[channel]) {
            _states[channel] = false;
            _timers[channel] = 0;
            dirty = true;
        }
    }

    if (dirty) write(get_lsb(), get_msb());
}

void ChannelMonitor::write(byte lsb, byte msb) {
    digitalWrite(_latch, LOW);
    shiftOut(_data, _clock, MSBFIRST, msb);
    shiftOut(_data, _clock, MSBFIRST, lsb);
    digitalWrite(_latch, HIGH);
    dirty = false;
}

void ChannelMonitor::set_channel(byte channel, bool state) {
    _states[channel] = true;
    _timers[channel] = millis() + DEFAULT_TIMER;
    dirty = true;
}

void ChannelMonitor::clear() {
    for (int channel = 0; channel < 16; channel++) {
        _states[channel] = false;
        _timers[channel] = 0;
    }
    write(0x00, 0x00);
}