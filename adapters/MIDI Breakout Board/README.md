# MIDI Breakout Board
When I started building the *BulkyMIDI-32* I didn't intend on building more than just the device itself, instead it was a wondrous journey down a rabbit hole filled with strange devices I've never dealt with before - most of it related to MIDI in some form or shape. To make things easier while debugging and prototyping them it made sense to make some sort of breakout board for the MIDI connections.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_010.jpg)

While it's not an exhaustive list, the breakout should be compatible with most common MCUs such as Arduino Uno, Arduino Nano, Arduino Every, Arduino Mini and Arduino Pro Micro. The important part is that the device must be the 5v variant (the circuit will not function at 3.3v).

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight-forward affair, you just solder the meager selection of components into place. Pay attention to keep the alignment of the parts somewhat straight, then you should be good. This documentation was written with a board that looks like the following in mind, but note that the github-repository may contain changes that have yet to be tested (therefore, it is recommend that PCBs are ordered using PCBWay links listed in the BOM).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_001.jpg)
![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_004.jpg)
![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_005.jpg)

Resistors have here been added to the board, note that newer versions of the board will also include a fifth resistor below U3. The single 1n4148-diode has also been added, this needs to be soldered in with the black stripe as indicated on the PCB itself. I've also added IC sockets, paying attention to matching up the indent on the one side with that of the silkscreen footprint. Sockets are a great help, mostly because that means I can afford the option of stealing the ICs for a later project without needing to desolder anything.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_006.jpg)

The 100nF capacitors have been added to the board, all of these are of the same value and they do not have a particular polarity. The component itself will usually have been marked with the code *104*.

![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_breakout_009.jpg)

The final components to go in are the various connectors, these are tacked into place - reheated and readjusted to get their position correct on the board. With those out of the way all that was needed to complete the build was to insert the ICs into the sockets, noting that the little indent needs to match up with those on the sockets we installed earlier.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). As I expect that most will build this adapter solely for MIDI-output, the values required for the MIDI input have been listed in parenthesis.

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| PCB            | Fabricate using Gerber files                          |     1 | PCBWay
| C1 *           | 100nF ceramic capacitor (5mm)                         |    (1)|
| C3             | 100nF ceramic capacitor (5mm)                         |     1 |
| D1 *           | 1N4148N small signal diode (DO-35)                    |    (1)|
| J1             | Breakable straight pin header                         |     1 |
| J2             | Female S-terminal 5pin DIN PCB                        |     1 |
| J3 *           | Female S-terminal 5pin DIN PCB                        |    (1)|
| R1             | 2k2 (2200) ohm resistor                               |     1 |
| R2,R3          | 220 ohm resistor                                      |     2 |
| R4 *           | 220 ohm resistor                                      |    (1)|
| R4 *           | 4k7 (4700) ohm resistor                               |    (1)|
| U1 *           | 6N138 opto-coupler (DIP-8)                            |    (1)|
| U3             | 74HCT00 (DIP-14)                                      |     1 |

*) As previously mentioned, these components are only needed when you want MIDI input as well.