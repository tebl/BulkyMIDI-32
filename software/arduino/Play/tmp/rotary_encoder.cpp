#include "rotary_encoder.h"

RotaryEncoder::RotaryEncoder(uint8_t pin_clk, uint8_t pin_dat, uint8_t pin_btn) {
	pinMode(pin_clk, INPUT_PULLUP);
	_clk = pin_clk;
	pinMode(pin_dat, INPUT_PULLUP);
	_dat = pin_dat;
	pinMode(pin_btn, INPUT_PULLUP);	
	_btn = pin_btn;

	last_clk = digitalRead(_clk);
}

void RotaryEncoder::update() {
	current_clk = digitalRead(_clk);

	// if (last_clk == LOW && current_clk == HIGH) {
	// 	if (digitalRead(_dat) == LOW) {
	// 		counter--;
	// 		_going_left = false;
	// 		_going_right = true;
	// 		} else {
	// 		counter++;
	// 		_going_left = true;
	// 		_going_right = false;
	// 	}
	// } else {
	// 	_going_left = false;
	// 	_going_right = false;
	// }

	if (current_clk != last_clk) {
		if (digitalRead(_dat) != current_clk) {
			counter++;
		} else {
			counter--;
		}
		Serial.println(counter);
	}
	// if (current_clk != last_clk && current_clk == 1) {
	// 	// If the DT state is different than the CLK state then
	// 	// the encoder is rotating CCW so decrement
	// 	if (digitalRead(_dat) != current_clk) {
	// 		counter--;
	// 		_going_left = false;
	// 		_going_right = true;
	// 	} else {
	// 		// Encoder is rotating CW so increment
	// 		counter++;
	// 		_going_left = true;
	// 		_going_right = false;
	// 	}
	// } else {
	// 	_going_left = false;
	// 	_going_right = false;
	// }
	// last_clk = current_clk;

	current_btn = digitalRead(_btn);
	if (current_btn == LOW) {
		if (millis() - last_btn_press > 50) {
			_click = true;
		}
		last_btn_press = millis();
	} else {
		_click = false;
	}
}

bool RotaryEncoder::is_active() {
	return (_going_left || _going_right || _click);
}

bool RotaryEncoder::is_going_left() {
	return _going_left;
}

bool RotaryEncoder::is_going_right() {
	return _going_right;
}

bool RotaryEncoder::is_clicking() {
	return _click;
}
