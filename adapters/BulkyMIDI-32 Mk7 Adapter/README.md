# BulkyMIDI-32 Mk7 Adapter
I picked up a fun little keyboard called the *Evolution Mk-7 MIDI keyboard* by a company called *Evolution Technologies Ltd.*, while it is explicitly called a MIDI-keyboard it only comes with a male DB15-cable as its only output. Apparently the keyboard was designed for plugging directly into the gameport on PC sound cards instead, essentially the opposite of what the BulkyMIDI-32 Gameport adapter does - hence the female connector on the adapter. 

![Build 000](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_000.jpg)
![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_011.jpg)

This specific keyboard itself is only able to send MIDI-data, but I included the input section of the circuit in case someone stumbles a similar keyboard with that capability. On the left hand section there is a solder bridge that can be used if the keyboard is able to provide power over the same cable, but that is missing from the Mk7 keyboard so 5v power supply must be provided via the barrel connector.

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight-forward affair, you just solder the meager selection of components into place. Paying attention to keep the alignment of the parts somewhat straight, then you should be good. This documentation was written with a board that looks like the following in mind, but note that the github-repository may contain changes that have yet to be tested (therefore, it is recommend that PCBs are ordered using PCBWay links listed in the BOM).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_002.jpg)
![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_004.jpg)

Resistors have here been added to the board, note that newer revisions of the board will also include a fifth resistor below U3. The single 1n4148-diode has also been added, this needs to be soldered in with the black stripe as indicated on the PCB itself. Similarly I've also installed a 1n4001 diode for the power supply input, here the stripte on the component itself is silver instead of black.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_005.jpg)

I've also added IC sockets, paying attention to matching up the indent on the one side with that of the silkscreen footprint. Sockets are a great help, mostly because that means I can afford the option of stealing the ICs for a later project without needing to desolder anything.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_006.jpg)

The 100nF capacitors have been added to the board, all of these are of the same value and they do not have a particular polarity. The component itself will usually have been marked with the code *104*.

![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_mk7_009.jpg)

The final components to go in are the various connectors, though I've skipped the one for MIDI input as I don't own a keyboard that provides a signal for it. The connectors themselves are easily tacked into place - then reheated and readjusted to get their alignment flush with the board. With those out of the way, all that was needed to complete the build was to insert the ICs into the sockets, noting as always that the little indent must match up with those on the sockets we installed earlier.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). As I expect that most will build this adapter solely for MIDI-output, the values required for the MIDI input have been listed in parenthesis.

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| PCB            | Fabricate using Gerber files                          |     1 | PCBWay
| C1 *           | 100nF ceramic capacitor (5mm)                         |    (1)|
| C3             | 100nF ceramic capacitor (5mm)                         |     1 |
| D1 *           | 1n4148 small signal diode (DO-35)                     |    (1)|
| D2 **          | 1n4001 general purpose diode (DO-41)                  |     1 |
| J1             | Right-angle female DB15-connector                     |     1 |
| J2             | Female S-terminal 5pin DIN PCB                        |     1 |
| J3 *           | Female S-terminal 5pin DIN PCB                        |    (1)|
| R1             | 2k2 (2200) ohm resistor                               |     1 |
| R2,R3          | 220 ohm resistor                                      |     2 |
| R4 *           | 220 ohm resistor                                      |    (1)|
| R4 *           | 4k7 (4700) ohm resistor                               |    (1)|
| U1 *           | 6N138 opto-coupler (DIP-8)                            |    (1)|
| U3             | 74HCT00 (DIP-14)                                      |     1 |

*) As previously mentioned, these components are only needed when you want MIDI input as well.

**) At times when I've orderen 1n4001 diodes, what I've received have been 1n4007 or something in between - these are simply higher rated and work fine in this circuit.