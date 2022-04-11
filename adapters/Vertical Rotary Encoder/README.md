# Vertical Rotary Encoder
While designing the BulkyMIDI-32 I looked hard and long at locating a suitable part for a rotary encoder meant to mount at an angle, but while there were references to them existing at some point in time they do not seem to be available - at least not at a price I was prepared to pay for it. Originally I had wanted to use one of the common rotary encoder modules such as the well known *KY-040* that's being sold by the same vendors dealing in Arduino-modules in general.

![Completed module](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_encoder_004.jpg)

One problem with simply buying these modules, is that the PCB that they come mounted on is simply too large to use within a device as small as the BulkyMIDI-32 (not that it's really *that* small to be honest). The solution I as all things tend to become once KiCAD is already installed, is to just design a small adapter board that'll fit our purposes. Using commonly available *EC11 Rotary Encoder*, essentially the thing that comes installed on the already mentioned modules. At first glance the tabs on the top and bottom might look a bit odd, but they slot into the other modules - adding mechanical strength to what would ordinarily be a weak spot.

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight forward affair, you just solder the two components into place. Pay attention to keep the alignment somewhat straight, in particular the right-angle pin header needs to be flush against the board.

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_encoder_001.jpg)
![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_encoder_002.jpg)
![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_encoder_003.jpg)

It has two solder jumpers on the back where you'd usually link pins 1-2 in normal operation, pin 1 indicated by the small triangle. If you find that the rotary encoder moves backwards from what you'd expect without a way in software to change it, change the jumpers so that they link pins 2-3.

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_encoder_004.jpg)

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). 

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Vertical_Rotary_Encoder_352faf4d.html)
| ENC1           | EC11 rotary encoder, 20mm. Preferably plum handle     |     1 |
| J1             | 4-pin segment of right-angle pin header               |     1 |
