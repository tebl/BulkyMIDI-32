# BulkyMIDI-32 Extras
Building the BulkyMIDI-32, I quickly ran into a bit of a problem with the format I had decided upon - I simply desired too many features to be able to fit all of it onto a $5 PCB (100x100mm). The solution came to me, weak and weary in a midnight dreary. Pondering over a quaint volume of forgotten TTL-lore, suddenly a raven came to be sitting upon my chamber door shouting: 

> Take all of the functionality that can be considered *"extra"* somewhere else. This way noone will have to build all of it in order to enjoy having an MT32-PI. 

You don't mess around with ravens, so I did as was told. This is why the project now has an *extras*-board. Build what you need, if you must. It's not like this story was true - except for the part where I ran out of board space.

![Build 020](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_020.jpg)

The additional features provided by this module are as follows:
* RS-232 circuitry for communicating with a PC, this allows the installed Arduino Pro Micro to perform baud rate translation when communicating with MIDI-equipment through a PCs serial port. This is needed because MIDI uses a custom baud rate, generally well outside the tolerances of what a regular serial card can communicate at.
* Passive two-channel audio mixer, allowing you to mix the soundeffects coming from the sound card with that of the MIDI module without dealing with configuring a mixer in software on the card.
* Status LEDs
* Three extra MIDI ports that can individually be configured to serve as additional OUT or THRU ports.

For the most part you would only install the components for the features that you need or want, the links below will allow you to jump to a specific point in the build process and to access other details. Do however start at the beginning, but do not be alarmed at the sheer length of the build process - most of it'll take a lot longer to describe than it is to simply implement them.

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Install LEDs](#12-install-leds)
  - [1.3> Electrolytics](#13-electrolytics)
  - [1.4> Connectors](#14-connectors)
  - [1.5> Installing the firmware](#15-installing-the-firmware)
  - [1.6> Finishing touches](#16-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With the equipment sorted, now comes the shopping - so head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. Note that with sites such as ebay, AliExpress and similar sites that sell cheap chinese components, you'll need to treat these as a suggested search term and look for something that matches the gallery pictures.

![Build 000](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_000.png)

Given the features listed at the start of this document, there are quite possibly a few of those you won't need or want as they can be considered separate from the main device though they will for the most part be related to the rabbit-hole I fell into when first starting out constructing the BulkyMIDI-32. There may certainly be some overlap between them, but it is a starting point (U1 will be needed for both MCU and the main device ports). The colours are as follows:

* **Green** components are used when we want the device to perform baud rate translation, this is used when receiving data via either the RS232-module or MIDI IN that is sent in a different baud rate from what a real MIDI-module expects. The closest baud rate on a PC would be 38400, well outside the tolerance of MIDI devices expecting 31250 baud.
* **Gray** components are only needed when using the *extras* board by itself, this is only relevant for the baud rate translation features described above.
* Components marked in **purple** indicate components directly adding features to the main BulkyMIDI-32 module. These include the addition of a rotary encoder module, additional *MIDI OUT* ports as well as *MIDI THRU* ports.
* **Yellow** components are for the RS-232, the Arduino Pro Micro takes care of handling the baud rate translation between RS-232 and the MIDI ports. 
* Finally, the **blue** components implement a simple passive audio mixer. It supports two channels when the *extras* board is used a standalone module, when connecting to it to the main module the audio output from that is used a third channel.

The build instructions from this point on will aim for the installation of most of the features, but feel free to leave out functionality you don't need according to colour chart above.

**NB!** Don't worry if the sheer length of this document looks intimidating, it's just a running commentary on everything that is done and updated pictures as we go along in the build process. Everything will be explained in due time, quite possibly including a lot more information than what would normally be needed for anyone with passable familiarity with soldering things together.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, then try to figure out where the components should go and in particular the orientation they should be installed - it may be a case of round thing going into another round thing, but this is electronics and the small details matter. As mentioned in the previous section, you may not want every feature so pay attention to the colour coding when deciding what to leave out.

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_001.jpg)

**NB!** This is revision F of the board, the changes to the revision G is the addition of a couple of diodes. 

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. A single glass 1n4148 diode has also been installed, pay particular attention so that the black band matches that of the markings on the PCB. As previously mentioned, revision G also includes a 1n4001 diode to be installed at D1 (to the right of the *BAUD RATE*-diagram) - this is a larger black diode with a silver band instead and should also be installed as indicated.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_003.jpg)

Given that space will inevitably get tight, I like to get the solder jumpers handled early - less chance of accidentally melting a socket or two.
- You **need** to make a choice for **JP1-JP3**, regardless of whether you'll be installing the additional MIDI-connectors to the board - soldered across pins *1-2* makes the connector a THRU port while *2-3* makes it an extra OUT port. The little triangle above one of the pads denotes the first pin.
- The same goes for the **NO_555** jumper, soldering pins *1-2* when you're installing all of the LED components including the *555* and so on. Solder across pins *2-3* when building a simpler version of the board.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_004.jpg)

Sockets should be installed for the three ICs needed for the complete unit - you could probably manage without them if you know that you'll only be using known good parts. However, they're cheap and you could probably afford to not be quite so *cheap* as to skip them! Match the indent on the socket with that on the PCB. I recommend tacking opposing corners into place, then reheat the pins and push the socket flush against the board before soldering the remaining pins.

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_005.jpg)

We've also gone ahead and installed our non-polarized capacitors, for the most part these will simply be 100nF (component marked *104*) decoupling caps added to ensure that the ICs function as intended and no values will be printed for them on the PCB. One of them will however not be the same as the rest, it is a 10nF capacitor that can be found directly below the space marked *74HCT14* (the component itself will be marked with the code *103*).

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_006.jpg)
![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_007.jpg)

A single transistor is also used, a 2n3906 in a TO-92 package. If you're lucky enough to find them at a reasonable price, you can get transistors with pre-bent legs to match the footprint directly - because I couldn't, I instead just bent them outwards myself. The reason for this is simply that I prefer soldering with a larger tip, so the use of a wider footprint makes it a lot easier to avoid accidentally shorting the legs together. Looking at one from the top, you'll notice that it has a flat and a curved side to them - this needs to be matched up to the footprint.

## 1.2> Install LEDs
Somehow I managed the rather impressive task of coming up with a rather strange way of mounting the LEDs, requiring me to write a separate chapter on the things. Anyway, the idea was to have the LEDs facing forwards with the leads having been bent so that the rear of the LED sit flush against the edge of the PCB.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_010.jpg)

Each of the pins on the LED have their own names, it's actually just a diode that happens to light up when energized. I can never remember which of them is which, so for ease of reference I'll just say that you need to ensure that the longer pin goes into the round pad. If you look closely at the LED you'll see that the legs have a bit of a flattened bit to it, this is the part that needs to be in the PCB when bending then push the plastic of the housing flat against the PCB edge.

![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_011.jpg)
![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_012.jpg)

Solder in place once you are happy with the results. Personally I don't like the light bleed you get between the LEDs, generally they are so efficient that they'll appear to light up slightly just from the glow of the LED beside it. One way to reduce that is to slide a section on top of the LED so that only the front part of it is uncovered.

![Build 013](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_013.jpg)

## 1.3> Electrolytics
With the LEDs in place, we've already moved on to other things. The electrolytic capacitors, or condensers if you're getting old like me. The one at *C6* ensures that everything on the board is properly powered. It's polarized component, meaning that we need to put it in the correct way or it won't work right. The stripe on its housing indicates the negative side, this matches up with the filled-in area of the footprint. As with the LEDs, the pins certainly have names that I'm incapable of remembering, so I'll just tell you to put the longer pin into the hole closest to the little plus sign (might need a magnifier to find it).

The same goes for *C8*, it is a smaller capacitor used for the timing on the 555. If you like to see the little LED flickering to show activity, just go ahead and install the 1uF component as indicated. If you would like it to stay on as long as there's data coming in at a regular pace, consider increasing the value to 3.3uF or even 4.7uF instead.

## 1.4> Connectors
![Build 014](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_014.jpg)

Finally getting around to something intended for a bit of audio, the 3.5mm audio jacks. Given that the board incorporates a way of passively mixing up to two signals into the main audio coming from the MT32-PI, we probably should use differently coloured connectors to separate the output (green) from the inputs (black connectors). Technically the inputs should have been blue or quite possibly red, but I can't seem to find someone selling them, so I went with black instead. 

![Build 014](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_048.jpg)

One step we need to pay particular attention to is how the *extras*-board would connect up with the main *BulkyMIDI-32*, specified as *J4* here. For my prototypes I've installed some extra long female pin headers as the one shown above on the main unit, only requiring standard male pin headers on this board. The spacing between these need to be correct, so I recommend that you try out the fit between the two modules with 20mm hex standoffs in between - **before** actually soldering anything in place.

![Build 014](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_015.jpg)

If you've decided upon how to connect the *extras*-board to the main board, then we'll continue on with the installation - starting with making a few decisions on how to install the Arduino Pro Micro.

![Pro Micro variants](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_pro_micro.jpg)

I need to say a few words about the various Arduino Pro Micro variants that are out there, one of the common variants encountered is more narrow than the others - to accommodate for this there is a duplicated row on one side. For reference I'm installing some female pin headers onto the Arduino itself, that way I can remove the board and use it for something else later. If you don't want to do all that you could just solder the two together, just make sure to install them according to the width of the board that you have.

![Build 013](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_017.jpg)

The rest is to install the rest. Merely this and nothing more.

That includes a female right-angle DB9 connector, a barrel connector and at least the MIDI OUT on the top right of the board. If you want to use the audio mixer you'll need the potentiomenters as well.

The added MIDI ports on the right side of the module, labelled MIDI 1 through 3, can be set to either be used as *MIDI THRU* or *MIDI OUT*. From the best of my knowledge, the *THRU* variety is used by the MT32-PI to send a copy of all received MIDI messages to any connected devices. *OUT* on the other hand will be messages sent by MT32-PI, often a copy of the same messages though they may have had changes and filtering applied to them. *JP1* through *JP3* specifies the configuration for each connection, just pay attention that the order of them may not be as expected.

**NB!** If you have not already done as told, you need to solder each of these solder jumpers - even if you're skipping the installation of the connectors. When in doubt or for where you don't want to make an informed decision, just link pins 1-2 with the little triangle indicating pin 1.

![Build 021](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_020.jpg)

## 1.5> Installing the firmware
This section will be a bit truncated, simply because the project includes different firmware that can be installed on the Arduino Pro Micro, each bringing different functionality into the mix. When in doubt the firmware you're looking for is probably the BaudRateConverter.

- [BaudRateConverter](https://github.com/tebl/BulkyMIDI-32/tree/main/software/arduino/BaudrateConverter) takes care of reading MIDI-data sent to it over RS-232, then retransmitting it over a standard 5-pin MIDI-cable. This is handy when using the device with an old laptop that may not have a MIDI-enabled gameport, but instead has a free serial port.
- [DebugMIDI](https://github.com/tebl/BulkyMIDI-32/tree/main/software/arduino/DebugMidi) gives you a simple debugging tool for MIDI-data, printing details for MIDI-messages received via a MIDI-cable. This is all handled via a command-line interface available via USB (running at 115200 baud).

Most of these will in some part need the [Arduino MIDI Library](https://github.com/FortySevenEffects/arduino_midi_library), the installation of which will be somewhat different depending on your choice of IDE for Arduino. PlatformIO, the one I'm using has the capability of installing the libraries for you automatically, but as as the Arduino IDE remains the most used I'll cover the process going forward.

![Build 050](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_050.png)

Installing additional libraries in the Arduino IDE is done from *Tools* -> *Manage libraries*, the resulting dialog allows you to search for them by name. Unfortunately the search function leaves quite a bit to be desired and there are quite a lot of them to choose from, so I recommend limiting by the topic *Communication* before attempting to browse the results. The one you're looking for is *MIDI Library* by Francois Best. Click install to have the software do its thing. 

![Build 051](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_051.png)

The second issue is simply that the *Arduino Pro Micro* isn't actually an official board created by Arduino, it's a significantly smaller Chinese copy of the Arduino Leonardo. What that means for us is that it doesn't have a suitable board definition for this board out of the box. This is easily fixed, going from *Tools* -> *Board: ...* .> *Boards Manager ...* - the one to look for will be named *SparkFun AVR Boards*.

![Build 052](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_052.png)

The next step is simply to select the board type as *SparkFun Pro Micro*, under *Processor* you need to ensure that *ATMega32U4 (5v, 16Mhz)* have been selected. Attempting to upload code to the board with the wrong setting here may cause problems communicating with it later, it's recoverrable - it's just an annoying process that involves shorting the reset pin at a specific point on startup.

With everything set up correctly, simply hit compile and upload to send it over to the Arduino Pro Micro. This should complete without any errors.

## 1.6> Finishing touches
With the firmware in place, there isn't much more that is left to do other than connect the two modules together using the 20mm standoffs in between the two, making sure that the central connector mates up correctly. Add the faceplate to the top, finally a front plate goes on the front of the device. If you have any knobs that will fit onto the knurled shafts of the potentiometers, those also go a long way towards a professional look. You may find that some of the rotary encoders come with a D-type shaft instead, but it may be worth ordering one with the same shaft as the potentiometers - makes it a lot easier to find matching knobs.

![Build 080](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_081.jpg)

With all of that done, it's time to enjoy some game - or at the very least have it loop the games title music, just to listen to all the glory that is the Roland MT-32 (at least as close as we can get without buying one). 

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress. You can often get free shipping, but plan on waiting 3-4 weeks for delivery so plan accordingly.

As detailed elsewhere in the [build](#1-building-the-device) portion of this document, you can simply choose to install the features you want in order to cut down on the construction costs or simply limit yourself to those that you have the parts for. To keep the BOM-portion below somewhat readable, the item counts in parenthesis are optional and consists mainly of parts related to the baud rate conversion feature as well as additional *MIDI OUT* and *MIDI THRU* ports. Note that some of the listings have been repeated as they are listed with different description, so order what you need and check the list twice.

| Reference               | Item                                                              | Count | Order  |
| ----------------------- | ----------------------------------------------------------------- | ----- | ------ |
| BulkyMIDI-32 Extras     | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Extras_9be44f98.html)
| A1                      | Arduino Pro Micro (5v 16Mhz)                                      |    (1)|
|                         | 12-pin straight pin header                                        |    (2)|
| C1,C10                  | 100nF ceramic capacitor (5mm)                                     |     2 |
| C2-C5,C11 *             | 100nF ceramic capacitor (5mm)                                     |     5 |
| C6                      | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| C8                      | 1uF electrolytic capacitor (5mm x 2mm)                            |     1 |
| C9                      | 10nF ceramic capacitor (5mm)                                      |     1 |
| D2,D4                   | 5mm LEDs, preferably frosted (not the bright clear ones)          |    (3)|
| D1,D5                   | 1N4001 diode DO-41                                                |     2 |
| D3 *                    | 1N4148N small signal diode (DO-35)                                |    (1)|
| J1                      | 2.1mm x 5.5mm barrel plug                                         |    (1)|
| J4                      | 10-pin dual row female pin header (extra long, see [documentation](#14-connectors)) |     1 |
| J2,J3,J5,J10,J11        | Female S-terminal 5pin DIN PCB                                    |    (5)|
| J6 *                    | Right-angle female DB9 connector (PCB mount)                      |    (1)|
| J7-J9                   | PJ-317 (5-pin 3.5mm audio jack), preferably 2x blue and 1x green  |     3 |
| J12 *                   | 6-pin segment of male pin headers, with pin 5 removed             |    (1)|
| J14 *                   | 2-pin segment of male pin headers                                 |    (1)|
| J13 *                   | 2x3 segment of dual row male pin headers                          |    (1)|
| J14 *                   | 2x2 segment of dual row male pin headers                          |    (1)|
| J16                     | RS-232-module stacked on top of J6, wired to pads below module    |    (1)|
| JP7                     | 2-pin segment of male pin headers                                 |     1 |
| Q1                      | 2n3906 transistor (TO-92)                                         |     1 |
| R1,R2,R18 *             | 220 ohm resistor                                                  |    (3)|
| R3,R6,R13,R14,R15,R16 * | 220 ohm resistor                                                  |    (6)|
| R5                      | 2k2 (2200) ohm resistor                                           |    (1)|
| R7-R12                  | 1k ohm resistor                                                   |     6 |
| R17 *                   | 10k ohm resistor                                                  |    (1)|
| R19                     | 2k2 (2200) ohm resistor                                           |     2 |
| R20 *                   | 2k2 (2200) ohm resistor                                           |    (1)|
| R21                     | 100k ohm resistor                                                 |     1 |
| R22                     | 10k ohm resistor                                                  |     1 |
| RV1,RV2                 | RV097G 10k (stereo audio potentimeter)                            |     2 |
| U1                      | 74HCT14 (DIP-14)                                                  |     1 |
| U2 **                   | MAX232A (DIP-16)                                                  |    (1)|
| U3 *                    | 6N138 opto-coupler (DIP-8)                                        |    (1)|
| U4                      | NE555P (DIP-8)                                                    |     1 |
| Mounting ***            | 20mm M2 screws                                                    |    (2)|
| Mounting ***            | 20mm M2 nuts                                                      |    (6)|
| Mounting ****           | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting ****           | Nylon M3x6mm nylon nuts                                           |     6 |

*) These components are only needed when installing the MCU for baud rate conversion.

**) Note the specification of a MAX232**A**, the older MAX232 without the *A* won't function without changes to the circuit. The same goes for Chinese clones, often sold as MAX232CPE. When in doubt, pick these up from a reputable electronics vendor.

***) These are used to hold the RS-232-modules in place, especially if you plan on installing two of them. With only the one module you can use shorter screws instead.

****) These are used in various places of the project, these are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need.