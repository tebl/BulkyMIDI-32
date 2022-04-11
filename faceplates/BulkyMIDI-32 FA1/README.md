# BulkyMIDI-32 Faceplate (FA1)
A faceplate designed to be installed onto the main [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module)-module. The faceplate has provisions for mounting two of the buttons onto the faceplate, the signals passing through the pin headers in the top-left corner. I consider this more of a usability option as you're never in doubt what is up and down, but at the cost of having a cleaner finish on the faceplate itself. If all of this sounds rather horrible, then check out [Faceplate FA2](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA2) as you might prefer that as an alternative.

![Faceplate FA1 installed](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_030.jpg)

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight forward affair, you just solder the two components into place. Pay attention to keep the alignment somewhat straight, in particular the right-angle pin header needs to be flush against the board. A picture of the board is shown below, pay particular attention to which side the components are installed.

![Faceplate FA1](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/BulkyMIDI-32%20FA1.jpg)

When installing the switches here, you'd jumper SW4 on the main BulkyMIDI-32 to positions 2-3 when doing so. The default would otherwise be linked across pins 1-2 when four buttons are installed on the main module instead.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_024.jpg)

The faceplate connects to the main module using extra long male pin headers, but we need to pay attention so that the height of these are adjusted before soldering them in place. The easiest way of doing this is just to insert them into the socket and press down on the faceplate until the black plastic part slides down into place. Once satisfied with the result, solder them in place and cut off the excess part of the pins that are poking out of the top.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/faceplates) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). 

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FA1_22c4404e.html)
| J1             | 1x10 section of long male header pins                 |     1 |
| SW1,SW2        | 6x6x11mm right-angle momentary button                 |     1 |