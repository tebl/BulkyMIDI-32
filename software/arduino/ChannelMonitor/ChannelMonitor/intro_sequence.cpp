#include "intro_sequence.h"
#include "settings.h"

IntroSequence::IntroSequence(int delay) {
    _delay = delay;
    _done = false;
    _step = 0;
    _timer = millis() + _delay;
}

bool IntroSequence::is_done() {
    return _done;
}

bool IntroSequence::is_ready() {
    return (millis() > _timer);
}

byte IntroSequence::get_lsb() {
    return pgm_read_byte_near(sequence + _step);
}

byte IntroSequence::get_msb() {
    return pgm_read_byte_near(sequence + (_step + 1));
}

void IntroSequence::next() {
    _step += 2;
    if (_step >= sequence_len) {
        _done = true;
    }
    _timer = millis() + _delay;
}


void IntroSequence::abort() {
    _done = true;
}