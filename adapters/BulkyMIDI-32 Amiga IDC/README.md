# BulkyMIDI-32 Amiga (IDC)
The Commodore Amiga didn't come with built-in MIDI-ports. Yes, Atari ST fans we get it now. MIDI ports are kind of awesome now when you own a real Roland MT-32, BulkyMIDI-32 or just about any other version of [mt32-pi](https://github.com/dwhinham/mt32-pi). This adapter is meant so that you'd have some way of connecting your favourite MIDI-device to your favourite Commodore Amiga computer (as long as it one of the more common variants and within reason). 

![Finished device](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_010.jpg)

This adapter plugs into the serial port of your Commodore Amiga 500/600/1200/2000/3000/4000, adding the ports you never knew you wanted. This version of the adapter has an IDC-plug on it, allowing it to be used with a 26-pin IDC to female DB25 cable that can be bought pre-made. If you want one that directly plugs into the serial port without a cable between the two, check out [BulkyMIDI-32 Amiga](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga) instead.

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight-forward affair, you just solder the meager selection of components into place. Pay attention to keep the alignment of the parts somewhat straight, then you should be good. This documentation was written with a board that looks like the following in mind, but note that the github-repository may contain changes that have yet to be tested (therefore, it is recommend that PCBs are ordered using PCBWay links listed in the BOM).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_001.jpg)
![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_004.jpg)

Resistors have here been added to the board. Do however note the presence of the single 1n4148-diode, this needs to be soldered in with the black stripe as indicated on the PCB itself. I've also added IC sockets, simply because I was able to afford the option of stealing the ICs that go into them at a later point in time.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_006.jpg)

The 100nF capacitors have been added to the board, all of these are of the same value. The five around the MAX232**A** are also 100nF, this means that we actually need to use a MAX232**A** version of the chip - the cheaper MAX232**CPE** commonly encountered on sites such as Ebay and AliExpress will not function as it is, so ensure that you purchase the correct chip. The 7805 is soldered flush against the board, this supplies power to the ICs on the board.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_007.jpg)

The 26-pin IDC-connector was soldered to the board. While you could just use standard pin-headers here instead, I prefer to use these as you get keying to ensure the cable isn't inserted the wrong way around. I didn't have enough 5-pin DIN connectors so what you see is what I've got.

![Build 008](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_008.jpg)

Here the cable has been added, but while you can purchase these ready-made I prefer purchasing a cable with 26-pin IDC-connectors on both ends and just cutting them into two pieces for use with various projects at a later point. The Amiga computers mentioned earlier require a female DB25, so what I've done is aligned a *DB25 IDC flat ribbon* connector to the end of one of the IDC-cables (note that one strand on the end has been removed). There are dedicated tools for attiching this kind of plug, but I prefer to just put them on a hard surface and jam them into place with the handle of a screwdriver between it and the back of my hand - loop the cable back over, then attach the strain-relief clip to the top.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). As I expect that most will build this adapter solely for MIDI-output, the values required for the MIDI input have been listed in parenthesis.

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/Amiga_MIDI_Interface_IDC_81756c6e.html)
| C1-C9          | 100nF ceramic capacitor (5mm)                         |     9 |
| D1             | 1N4148N small signal diode (DO-35)                    |    (1)|
| J1             | 2x13 pin straight IDC socket                          |     1 |
| J2             | Female S-terminal 5pin DIN PCB                        |     1 |
| J3             | Female S-terminal 5pin DIN PCB                        |    (1)|
| R1             | 2k2 (2200) ohm resistor                               |     1 |
| R2,R3          | 220 ohm resistor                                      |     2 |
| R4             | 220 ohm resistor                                      |    (1)|
| U1             | 6N138 opto-coupler (DIP-8)                            |    (1)|
| U2             | 7805 (TO-220)                                         |     1 |
| U3             | 74HCT00 (DIP-14)                                      |     1 |
| U4             | MAX232A (DIP-16)                                      |     1 |
