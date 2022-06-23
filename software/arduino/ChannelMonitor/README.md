# Channel Monitor

The original *Channel*-module displays the active MIDI channels using pure logic chips, but as it was a rather involved build I also created a somewhat more modern module named *Channel 2* as well. Instead of logic chips, this one uses an *Arduino Pro Micro* as well as a couple of shift registers to handle the same tasks. The code required to power the new module is the one you're looking at now.

## Libraries

While the installation of libraries are handled automatically when using PlatformIO from within Visual Studio Code, but I recognize that many will simply want to get the code onto the board while using the standard *Arduino IDE* instead. In that case you may need to install libraries manually, the ones needed at the moment is as follows:
- [Arduino MIDI Library](https://github.com/FortySevenEffects/arduino_midi_library)
- [ezButton](https://github.com/ArduinoGetStarted/button)