# BulkyMIDI-32 TRS MIDI
Working on the [BulkyMIDI-32 Internal](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Internal) I made the choice of using TRS sockets for the MIDI-signals, thinking that was an easy way to get it connected up to my other equipment - as that would just require buying such a ready-made cable. Unfortunately though, the ones I had ordered up from China were simply wired up wrong - they were intended for audio and did not match any of the known pinouts for MIDI. I did order them up from a music store, but they've been delayed so many times that I just wanted *something* that I could rely on!

![Build 000](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_trs_010.jpg)

Myself. Meaning that I threw together this adapter, allowing me to use a standard 3.5mm stereo audio cable for MIDI-purposes. Yes I could probably have just ordered one from a really expensive store and have it delivered within a week from international site for professional musicians that know what they are doing, but I didn't like the fact that a short little cable - would somehow end up being the most expensive component when building an *MT32-PI*.

![Build 000](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_adapter_trs_005.jpg)

Helpfully enough, there are two competing standards for how such a thing should be wired - commonly referred to as *type A* and *type B*. [A simplified guide to MIDI over TRS minijacks](https://minimidi.world/) goes into all of the detail that you would ever need to understand for the both of them. In practice when it comes to the adapter that I made, there's a set of jumpers that need to be set according to the equipment you're using - either horizontal (*type A*) or vertical (*type B*).

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight forward affair, you just solder the two components into place. Just don't burn yourself while doing so. Some 5-pin TRS socket types may have little plastic *"nubs"* underneath them that you may need to snip off to make it sit perfectly flush, but most will fit. 

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). 

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/MIDI_to_TRS_Adapter_fb57ed94.html)
| J1             | PJ-307 3.5mm socket (alternatively PJ-317)            |     1 |
| J2             | Female S-terminal 5pin DIN PCB                        |     1 |
| J3             | Straight pin headers, with two jumper caps            |     1 |
|                | 3.5mm TRS cable (M-M), preferably of decent quality   |     1 |