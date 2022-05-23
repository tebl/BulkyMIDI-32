# BulkyMIDI-32 Amiga
The Commodore Amiga didn't come with built-in MIDI-ports. Yes, Atari ST fans we get it now. MIDI ports are kind of awesome now when you own a real Roland MT-32, BulkyMIDI-32 or just about any other version of [mt32-pi](https://github.com/dwhinham/mt32-pi). This adapter is meant so that you'd have some way of connecting your favourite MIDI-device to your favourite Commodore Amiga computer (as long as it one of the more common variants and within reason). 

This adapter plugs directly into the serial port of your Commodore Amiga 500/600/1200/2000/3000/4000 using a right-angle female DB25-connector, finally adding the ports you never knew you desired. If you want something with a bit of cable in between, then check out the [IDC-version](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC) instead.

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Given that the devices are just about identical from a design perspective, check out the documentation for the [IDC-version](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC) instead of having me copy and paste the whole thing. The difference between the two is just the connector used to connect to the computer.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). As I expect that most will build this adapter solely for MIDI-output, the values required for the MIDI input have been listed in parenthesis.

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/Amiga_MIDI_Interface_IDC_81756c6e.html)
| C1-C9          | 100nF ceramic capacitor (5mm)                         |     9 |
| D1             | 1N4148N small signal diode (DO-35)                    |    (1)|
| J1             | DB25 right-angle female connector                     |     1 |
| J2             | Female S-terminal 5pin DIN PCB                        |     1 |
| J3             | Female S-terminal 5pin DIN PCB                        |    (1)|
| R1             | 2k2 (2200) ohm resistor                               |     1 |
| R2,R3          | 220 ohm resistor                                      |     2 |
| R4             | 220 ohm resistor                                      |    (1)|
| U1             | 6N138 opto-coupler (DIP-8)                            |    (1)|
| U2             | 7805 (TO-220)                                         |     1 |
| U3             | 74HCT00 (DIP-14)                                      |     1 |
| U4             | MAX232A (DIP-16)                                      |     1 |
