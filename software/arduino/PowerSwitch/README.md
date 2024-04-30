# Power Switch
Power Switch is implemented using an *Arduino Pro Micro*, this is the sketch that runs on it. Yes, it certainly did not *need* to be an *Arduino Pro Micro*. I just didn't want to introduce any more types of MCUs for the *BulkyMIDI-32*. Also, I've grown accustomed to having that little bit of memory available.

The usage of the module should be straight-forward when you realize that the function of buttons are triggered upon button releases instead of presses. The reason for this was to introduce a difference between *quick* presses and a longer, *intentiona*l button push. A quick channel push will latch an output to the ON-position, but you need a long press to turn it OFF. A *long* push on the *SYSTEM*-button stores channel states, this will be restored when the unit is first powered on - there will be a delay between each channel activation in order to space them out. 

## Libraries
While the installation of libraries are handled automatically when using PlatformIO from within Visual Studio Code, but I recognize that many will simply want to get the code onto the board while using the standard *Arduino IDE* instead. In that case you may need to install libraries manually, the ones needed at the moment is as follows:
- [ezButton](https://github.com/ArduinoGetStarted/button)