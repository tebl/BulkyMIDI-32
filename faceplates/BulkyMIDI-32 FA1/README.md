# BulkyMIDI-32 Faceplate (FA1)
A faceplate designed to be installed onto the main [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module)-module, it has a user interface connecting it to the module providing the option for moving two of the buttons onto the faceplate.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_030.jpg)

When installing the switches here, you'd jumper SW4 on the main module to 2-3 and not install the switches there. I consider this more of a usability option as you're never in doubt what is up and down, but at the cost of having a cleaner finish on the faceplate itself. If all of this sounds rather horrible, then check out [Faceplate FA2](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA2) instead.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/BulkyMIDI-32%20FA1.jpg)

- [1> Schematic](#1-schematic)
- [2> BOM](#2-bom)

# 1> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/faceplates) and this is what you'll need to print and work your way through when things fail to work as expected.

# 2> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). 

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FA1_22c4404e.html)
| J1             | 1x10 long male header pins                            |     1 |
| SW1,SW2        | 6x6x11mm right-angle momentary button                 |     1 |