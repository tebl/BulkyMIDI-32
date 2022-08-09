# BulkyMIDI-32 Play
In many ways the missing module when it comes to playing around with a Roland MT-32, both the vintage kind as well as the emulated version that is the main BulkyMIDI-32 module (running mt32-pi) - simply playing back a .MID-file without a computer attached to it. Implemented with an Arduino Pro Micro at its heart, you can put your files on an SD-card and play them back - use a long press when starting playback to loop the file, another long press to stop playback. During playback the rotary encoder encoder can be used to speed up or slow down the tempo.

![Finished unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_041.jpg)
![Bare unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_040.jpg)

Given that the design includes provisions for more than the expected number of MIDI-ports, a change in firmware can allow the hardware design to be used for entirely different purposes such as MIDI-message filtering, merging inputs and similar functionality.

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Without front panel](#12-without-front-panel)
  - [1.3> Including front panel](#13-including-front-panel)
  - [1.4> Finishing touches](#14-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *BulkyMIDI-32 Audio Switch* by using this module by itself, but there is certainly the option of building the complete version of it - including front panels, faceplates for the top of the unit and so on. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there so I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sell cheap chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed, so you'll need to consider the description listed as suggested search terms.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (most of the information should be clearly marked on the silkscreen).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_003.jpg)

Here we've already gotten started by installing all of the resistors needed, making sure that we use the correct values for each position on the board. While doing this, it is always a good recommendation to try and keep the colour bands in the same orientation - mostly because it makes it easier to spot mistakes later on.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_004.jpg)

There are spots for a couple of 1n4148 diodes in several locations on the board, while these will not be used by the standard firmware for the *BulkyMIDI-32 Play*-module. Mostly in case I want to use the board for something else at a later point in time. The diodes are polarized, for that reason we need to pay particular attention so that the black band matches up with that of the markings on the PCB.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_006.jpg)

Sockets should be installed for the ICs, I've even added those that can be considered optional. With that in place I've also installed the monolithic disc capacitors, these are all unpolarized and for the ones without any specific markings we will install 100nF capacitors (the code *104* will be printed on them).

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_007.jpg)

I added the pin headers for the *Arduino Pro Micro*, these come in variations that have slightly varying widths so one side will have two sets of pins. The Arduino itself will have female pin headers soldered to it, so this won't be an issue later - the reason for doing this way is that I might want to recycle the Arduino for a later project and this change makes it a lot easier to do so.

![Build 008](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_008.jpg)
![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_009.jpg)

I'm using a fairly common *MicroSD Card Adapter* for my projects, usually you can find these in packs of three or more so they are easy to use as long as you have the board space for them (that way I don't have to think about voltage regulation when dealing with the SD-cards directly). The installation is easy, just add some thick doublesided tape to the top of the slot and insert the adapter upside down into the holes for it. It's probably not recommended to do so, but I usually just use the PCB itself to bend the right-angle pin headers until it goies into position.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_010.jpg)

Finally I added the single polarized capacitors, these need to go in the right way for them to function as expected. The stripe on the side of the capacitor denotes the negative side of it, this should be matched up with the filled in area of the footprint. I've also added a DC barrel connector (5.5mm x 2.1mm) to the board.

![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_011.jpg)

Add 20mm hex standoffs to each corner of the board, fixing them with nuts on the underside. Depending on your life decisions up to this point, the assembly from this point continues in one or the other direction:
- [1.2> Without front panel](#12-without-front-panel)
- [1.3> Including front panel](#13-including-front-panel)

## 1.2> Without front panel
So you resisted the temptation to build the complete version, choosing instead to cut corners where possible? Well, good for you. I'm not judging - it was just a general observation.

There's much that we need to do, mainly just install the two 5mm LEDs on the board - the longer LED pin goes into the round pad. The four switches are standard right-angle switches, the recommended way to install them is simply to solder a single pin then reheat and adjust its alignment before soldering in the rest of the pins.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.3> Including front panel
![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_012.jpg)

The [Play Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel) have its own set of documentation going into the various steps required to put it together correctly, a finished unit have already been installed on the device as shown already. The clue to get it right is ensuring that one of the *flat* sides of the 20mm standoffs point towards the inside of the PCB. With the alignment correct you should be able to insert the panel into the board without too much force, if you have one I recommend that you try installing your selected faceplate on top of the device using screws.

At this point we've not actually soldered the various boards together, mostly to ensure that everything comes together correctly before we actually do so. Push the panel firmly so that it sits towards the back of the cutouts, before finally soldering the pins into place - afterwards we just make sure to trim the excess parts of the pin headers from the underside of the device to prevent any accidental shorting.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.4> Finishing touches
![Build 040](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_040.jpg)

If you've made it this far, you're almost ready to simply start using it. What's missing in order to test it is the single IC that needs to be inserted into the socket, so just get that out of the way before you forget to do so. The device is powered using a 5v DC barrel jack (center positive). These should be easy to obtain from your favourite electronics vendor, just make sure that it's from a somewhat respected brand.

![Build 041](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_play_041.jpg)

The only step that's remaining to do when it comes to the hardware is just to screw the faceplates back on the top of the device, once that's in place we can also add the front panel as well.

The [firmware](https://github.com/tebl/BulkyMIDI-32/tree/main/software/arduino/Play) that was developed for the device have been included in the software-portion of this repository. The code itself was written using PlatformIO environment though it should be compilable using the standard *Arduino IDE*, if you should prefer to do so. 

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| PCB                   | Fabricate using Gerber files                                      |     1 | PCBWay
| [Panel PCB](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel) | Fabricate using Gerber files                                      |    (1)| PCBWay
| A1                    | Arduino Pro Micro                                                 |     1 |
|                       |  - Breakable straight pin headers                                 |     1 |
|                       |  - 12-pin female pin header                                       |     2 |
| A2                    | MicroSD Card Adapter module                                       |     1 |
| C1                    | 100nF ceramic capacitor (5mm)                                     |     1 |
| C2,C7                 | 100nF ceramic capacitor (5mm)                                     |    (2)|
| C6                    | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| D1,D2 *               | 5mm LED                                                           |    (2)|
| D3,D4                 | 1N4148N small signal diode (DO-35)                                |    (2)|
| IC1 *                 | 0.91 inch oled display                                            |    (1)|
| J1                    | 2.1mm x 5.5mm barrel plug                                         |     1 |
| JP1                   | Breakable straight pin header and jumper cap                      |     1 |
| R1-R3,R6,R8-R10,R18   | 220 ohm resistor                                                  |     8 |
| R4,R5                 | 330 ohm resistor                                                  |     2 |
| R7,R19                | 2kk (2200) ohm resistor                                           |     2 |
| SW1-SW6 *             | 6x6x5mm right-angle momentary button                              |    (4)|
| U1                    | 74HCT14 (DIP-14)                                                  |     1 |
| Mounting ****         | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting ****         | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****         | Nylon M3x6mm nylon nuts                                           |     4 |

*) You can choose to install a front panel, in which case you would skip the installation of the 3mm LED as well as the switches. The resistors will be used by the front panel.

****) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.