#include "channel_monitor.h"
#include "settings.h"

ChannelMonitor::ChannelMonitor(uint8_t pin_data, uint8_t pin_clock, uint8_t pin_latch, uint8_t pin_oe) {
	pinMode(pin_data, OUTPUT);
	_data = pin_data;

	pinMode(pin_clock, OUTPUT);
	_clock = pin_clock;

	pinMode(pin_latch, OUTPUT);
	_latch = pin_latch;

    set_brightness(Brightness::BRIGHTNESS_MEDIUM);
	pinMode(pin_oe, OUTPUT);
	_oe = pin_oe;

    clear();
}

void ChannelMonitor::set_brightness(Brightness value) {
    switch (value) {
        case Brightness::BRIGHTNESS_LOW:
            analogWrite(PIN_OE, LED_CHANNEL_LOW);
            break;

        case Brightness::BRIGHTNESS_MEDIUM:
            analogWrite(PIN_OE, LED_CHANNEL_MEDIUM);
            break;

        case Brightness::BRIGHTNESS_HIGH:
            analogWrite(PIN_OE, LED_CHANNEL_HIGH);
            break;

        default:
            return;
    }

    _brightness = value;
}

void ChannelMonitor::toggle_brightness() {
    uint8_t value = _brightness;
    if (value == Brightness::BRIGHTNESS_HIGH) value = Brightness::BRIGHTNESS_LOW;
    else value++;
    set_brightness((Brightness) value);
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

void ChannelMonitor::boost_channel(byte channel) {
    _states[channel] = true;
    _timers[channel] = millis() + CHANNEL_DELAY;
    dirty = true;
}

void ChannelMonitor::clear_channel(byte channel) {
    _states[channel] = false;
    _timers[channel] = 0;
    dirty = true;
}

void ChannelMonitor::clear() {
    for (int channel = 0; channel < 16; channel++) {
        _states[channel] = false;
        _timers[channel] = 0;
    }
    write(0x00, 0x00);
}