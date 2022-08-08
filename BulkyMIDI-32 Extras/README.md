# BulkyMIDI-32 Extras
Building the BulkyMIDI-32, I quickly ran into a bit of a problem with the format I had decided upon - there were simply too many features that I had originally wanted, but couldn't fit within the regular $5 board limitations (100x100mm). All of the extra features that weren't strictly required in order for the MT32-PI to function, were moved onto this board instead - which is why it's referred to as the *extras*-board in most of the documentation. 

![Build 042](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_049.jpg)

The additional features provided by this module are as follows:
* Providing an option for mounting RS232-modules for level translation
* An Atmega328 MCU for performing baud rate translation of these signals when connecting a real Roland MT-32 to a PCs serial port. This is due to MIDI using a custom baud rate that the outside of what the serial port can be configured to provide without physically changing the crystal on the card itself.
* Passive two-channel audio mixer, allowing you to mix the soundeffects coming from the sound card with that of the MIDI module without dealing with configuring a mixer in software on the card.
* Status LEDs
* Three extra MIDI ports that can individually be configured to serve as additional OUT or THRU ports.

For the most part you would only install the components for the features that you need or want, the links below will allow you to jump to a specific point in the build process and to access other details. Do however start at the beginning, but do not be alarmed at the sheer length of the build process - most of it'll take a lot longer to describe than it is to simply implement them.

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Install LEDs](#12-install-leds)
  - [1.3> Crystal and jumpers](#13-crystal-and-jumpers)
  - [1.4> Adding a rotary encoder](#14-adding-a-rotary-encoder)
  - [1.5> Installing the RS-232 modules](#15-installing-the-rs-232-modules)
  - [1.6> Connecting the boards](#16-connecting-the-boards)
  - [1.7> Installing the firmware](#17-installing-the-firmware)
  - [1.8> Finishing touches](#18-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With the equipment sorted, now comes the shopping - so head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. Note that with sites such as ebay, AliExpress and similar sites that sell cheap chinese components, you'll need to treat these as a suggested search term and look for something that matches the gallery pictures.

![Build 000](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_000.png)

Given the features listed at the start of this document, there are quite possibly a few of those you won't need or want as they can be considered separate from the main device though they will for the most part be related to the rabbit-hole I fell into when first starting out constructing the BulkyMIDI-32. There may certainly be some overlap between them, but it is a starting point (U1 will be needed for both MCU and the main device ports). The colours are as follows:

* **Green** components are used when we want the device to perform baud rate translation, this is used when receiving data via either the RS232-module or MIDI IN that is sent in a different baud rate from what a real MIDI-module expects. The closest baud rate on a PC would be 38400, well outside the tolerance of MIDI devices expecting 31250 baud.
* **Gray** components are only needed when using the *extras* board by itself, this is only relevant for the baud rate translation features described above.
* Components marked in **purple** indicate components directly adding features to the main BulkyMIDI-32 module. These include the addition of a rotary encoder module, additional *MIDI OUT* ports as well as *MIDI THRU* ports. A second RS232-module can be stacked and wired to the pins beneath it to add RS232 level translation for communicating directly with the MT32-PI firmware, which can be configured to use a non-MIDI standard baud rate.
* **Yellow** components are the RS232-modules, two of which can be installed (as briefly touched upon previously). If only one module is required, JP4-JP6 can be linked so that the module communicates with the *MT32-PI* firmware instead of the optional baud rate conversion feature provided by the MCU.
* Finally, the **blue** components implement a simple passive audio mixer. It supports two channels when the *extras* board is used a standalone module, when connecting to it to the main module the audio output from that is used a third channel.

That may sound like a lot to take in, but for the most part a good starting point is just to aim for the installation of the purple, blue as well as one of the RS-232 modules highlighted in yellow. The build instructions from this point on will aim for the installation of everything, but feel free to leave out what you don't need according to colour chart above.

**NB!** Don't worry if the sheer length of the thing looks intimidating, it is for the most part just a running commentary on what is done and updated pictures as we go along. Everything will be explained in due time, quite possibly including a lot that is not needed with a passable familiarity with soldering things together.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, then try to figure out where the components should go and in particular the orientation they should be installed - it may be a case of round thing going into another round thing, but this is electronics and the small details matter. As mentioned in the previous section, you may not want every feature so pay attention to the colour coding when deciding what to leave out.

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_001.jpg)

**NB!** This is revision D of the board, the subsequent images are from an earlier revision of the board. The differences between the two are that the power LED as well as its voltage dropping resistor was moved onto the main module, the position of the potentiometers was also moved due to the rotary encoder also having been moved there. 

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. The single 1n4148 diode has also been installed, pay particular attention so that the black band - it need to match the markings on the PCB footprint.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_003.jpg)

Sockets should be installed for the two ICs needed for the complete unit - you could probably manage without them if you know that you'll only be using known good parts. However, they're cheap and you could probably afford to not be quite so *cheap*! Match the indent on the socket with that on the footprints. I recommend tacking opposing corners into place, then reheat the pins and push the socket flush against the board.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_004.jpg)

We've also gone ahead and installed our non-polarized capacitors, for the most part these will simply be 100nF (component marked *104*) decoupling caps added to ensure that the ICs function as intended and no values will be printed for them on the PCB. Three of the capacitors are different however, the two directly below the crystal are are marked on the board as 10pF (component itself will be marked either *100* or simply *10*). The last one is the 10nF capacitor on the bottom-right (these should be marked *103*).

Not shown in any of the pictures because I forgot to install it until later, is the single transistor at Q1. If you're lucky you can get transistors with pre-bent legs to match the footprint directly, but as the regular kind costs around a tenth of these we can simply bend the legs slightly outward by ourselves. The entire reason I'm doing it this way is that I prefer soldering with a larger tip so I use a wider footprint to avoid accidentally shorting the legs. Match the flat side of the transistor to that of the footprint.

## 1.2> Install LEDs
Somehow I managed the rather impressive task of coming up with a rather strange way of mounting the LEDs, requiring me to write a separate chapter on the things. Anyway, the idea was to have the LEDs facing forwards (there are three of them in the later designs) and the leads will need to be bent so that the rear of the LED sit flush against the edge of the PCB.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_010.jpg)

Each of the pins on the LED have their own names, mainly because it's a diode that happens to light up when energized. I can never remember which of them is which, so for ease of reference I'll just say that you need to ensure that the longer pin goes into the round hole. If you inspect the component, you can usually also see that the longer pin is also connected to the smaller piece of metal inside it.

![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_011.jpg)

## 1.3> Crystal and jumpers
With the LEDs in place, we'll move along to some miscellaneous components. Specifically components that will be required by the ATmega 328 MCU, a variant chosen simply because it is so familiar from working with the Arduino Uno.

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_012.jpg)

The crystal doesn't have a polarity, so just install it as you see fit. The switch marked *SW1 / reset* is something you would normally not need to deal with, it's just here so that I can reset the MCU while developing the firmware for it - ideally a future version wouldn't randomly crash or experience any sort of buffer overruns. In case you were looking for them in the picture above, they're not there because I forgot to install them.

![Build 020](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_020.jpg)

Normally I'd tell you to link these solder jumpers at a later point in the guide, but as we'll be adding a few slightly larger components around them we'll need to deal with them now. Remember the part from the start of the guide, where I told you to make a decision on which features you wanted? Me neither. Backing up to that part, the first we'll need to decide upon is the number of RS232-modules that will be used. I've decided to install one for use by the MCU and the second stacked on top of it for the MT32-PI, this means that I'll need to link pins *1-2* on *JP4* through *JP6* - the little triangle indicates pin 1.

The added MIDI ports on the right side of the module, labelled MIDI 1 through 3, can be set to either be used as *MIDI THRU* or *MIDI OUT*. From the best of my knowledge, the *THRU* variety is used by the MT32-PI to send a copy of all received MIDI messages to any connected devices. *OUT* on the other hand will be messages sent by MT32-PI, often a copy of the same messages though they may have had changes and filtering applied to them. *JP1* through *JP3* specifies the configuration for each connection, just pay attention that the order of them may not be as expected.

**NB!** You need to solder each of these solder jumpers, even if you're not actually installing any of the components for them as the noise from not being connected anywhere may impact other parts of the circuits. When in doubt, just link pins 1-2 with the little triangle indicating pin 1.

![Build 021](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_021.jpg)

Additionally there's a solder jumper marked *NO_555*, this should be soldered across pins *1-2*. The other position can be used to retain the operation similar to earlier revisions of the boards, it also allows the construction of a slightly cheaper version of the board.

![Build 022](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_022.jpg)

Male pin headers have been soldered into place, mainly just tack one of the pins into place - reaheat and adjust to find the perfect alignment (hopefully without burning your fingers). I've used some differently coloured ones in order to spice things up, but you just use what you have available.

![Build 023](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_023.jpg)

The three 3.5mm jacks for the passive audio mixer have been soldered into place, the one on the top is the resulting output that would go to your stereo system while the two bottom ones are inputs. Ideally the colour of the output on the top should have be green and the two below them blue, if only to keep it in line with the colour coding on 2000s computer motherboards. At this point you would normally also install the RV097G potentiometers marked *RV1* and *RV2*, but I did not have these at the timing of building these - so just pretend that they're there for now.

![Build 024](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_024.jpg)

The *extras* board doesn't actually need a separate DC power jack as power would be provided by the *extras*-connector, marked *J4* on the board - this should only be used when the board is used standalone as a baud rate converter and in most cases you would never need it.

Speaking of power, I've also soldered into place the single electrolytic capacitor at *C6* that ensures that everything on the board is properly powered. It's polarized meaning that we need to put it in the correct way, the stripe indicates the negative side and this goes into on the side of the filled in area. As with the LEDs the pins have names that I'm incapable of remembering, but if you have a longer pin then this goes on the side marked with a little plus sign. The same goes for *C8*, a smaller capacitor used for the timing on the 555.

## 1.4> Adding a rotary encoder
A rotary encoder may be installed as a replacement for the volume up and down buttons, but given the active development of the MT32-PI firmware these may end up doing more interesting things over time so I chose to add it as an option. However, I ran into an issue with the ready-made modules found on different sites (usually referred to as the *KY-040 rotary encoder module*) - mainly that they were significantly larger than they needed to be without much in the order of features.

Finding one was built to be used at an angle proved to be easier said than done, it seems that they've disappeared over the years - if they were available in the first place. For that reason I designed the [Vertical Rotary Encoder](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/Vertical%20Rotary%20Encoder) adapter so that a cheap 5-pin component can be used instead. The tabs at the top and bottom fit into the slots made into the main BulkyMIDI-32 module as well as the *extras* board. It is documented separately, but a completed module looks as shown below. The two jumpers on the back of it needs to have pins 1-2 linked, the little triangle indicating pin 1 - if you find that the rotary encoder works backwards from what you expect, then you'd need to link the jumpers the other way around.

![Build 030](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_030.jpg)
![Build 031](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_031.jpg)

The module is mounted on the *extras* board as expected, but to get the alignment correct it is recommended that you stack the two main modules before finally soldering it into place on the bottom. This is to ensure that the little tabs sit flush against the top part of the cutout, minimizing stress on the solder joints over time though it would probably outlast the rotary encoder itself. 

When stacking the modules, you'd use 20mm nylon hex standoffs. When the main module has already been built, you may need trim the bottom of the pins for the 5-pin DIN sockets as these may get in the way of the connectors on the *extras*-board.

## 1.5> Installing the RS-232 modules
As previously mentioned, the *extras* board can have two of these modules stacked onto each other as long as you've got the correct one due to the differences and placement of the mounting option - you'll have to browse around for something that looks exactly like the one shown below. Usually you'll find bundles of 3 or 5 of them for the price of a cup of fancy coffee, so there's no reason why you wouldn't want a few extra parts to put in your dedicated parts-bin.

![Build 040](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_040.jpg)
![Build 041](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_041.jpg)
![Build 042](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_042.jpg)

As I'll be installing two of the modules, the second adapter will need to be wired using a short cable. Mainly because it'll be a bit of a pain to add later, we'll get that soldered into place before moving on. The ones I'm using here is just some dupont-wires with one end cut off. Some regular male pin headers have also been added.

![Build 043](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_043.jpg)

At first glance there's a lot going on in this picture, but it's easier than it looks. To start things off, the modules are installed upside down and recessed into the *extras* board in order to actually fit two of them. Starting back at the beginning, or rather the underside, I've used a couple of 20mm M2 screws with a couple of nuts per screw added to the topside of the board. Then a second set of nuts are added to finally hold the module in place. Unfortunately that'll require removing the right-angle pin header already on the board first, but that's a relatively easy job as you can heat up one pin at a time and pull it out with a pair of pliers.

![Build 044](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_044.jpg)

Yet another couple of nuts were added onto the screws before adding the second RS-232 module, the position of these were then adjusted to make sure that we can get the fourth and final couple of nuts onto the top. The third set of nuts added earlier and then screwed upwards so that they sandwich the module firmly into place (use threadlock if you have the stuff). Insert the cable and you should be done.

## 1.6> Connecting the boards
Generally the chapter where we do everything that's remaining, but to get started we'll just get those IC sockets populated by the components matching what's marked on the board. Secondly, we'll need a method of connecting the two stacked modules.

![Build 045](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_045.jpg)

ICs are installed just the way you expect, keeping the indent in the same place as the one on the sockets we added. For connecting the boards, this is done via the header labelled *J4* on the board. Given that there's quite a lot of space between the two modules once stacked on top of eachother (with 20mm spacers in between) we can't use just any female dual row 10-pin header, we'll either need to make a cable - or simply look for one that looks exactly like the one shown below. While shopping for parts, the thing to look for is what would look like regular pin header plastic above the female socket part. I had some extras left over from building a stackable Raspberry Pi hat, the extra pins were simply removed thanks to some rather creative use of wire clippers.

![Build 048](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_048.jpg)

I recommend stacking the modules before attempting to solder the connectors together, this is needed to ensure that the height remains correct between the two. If you're worried about accidentally soldering the boards together, just aim for enough that you get the height correct - remove and then solder remaining pins. Your end result result should look something like the following.

![Build 047](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_047.jpg)

## 1.7> Installing the firmware
This section will be a bit truncated because I cheated and nabbed one of the Atmega328p chips out of an Arduino Uno, meaning that it already had the Arduino bootloader already on it so excuse me while I skip over most of the harder stuff. Well, I can't leave it at that so the way I recommend is either following the various guides on the Internet for using another Arduino (such as [this](https://www.brennantymrak.com/articles/programming-avr-with-arduino.html) one) or buying a ready-made module if you're planning on doing it more than this once as it is kind of annoying to build and keep in one piece on a breadboard over time.

![Build 050](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_050.jpg)

If you chose the latter, then what you're looking for was found listed on ebay with "*USBTiny USBtinyISP AVR ISP programmer for Arduino bootloader Meag2560 uno r3*"  as the title - just make sure that you get the 6-pin ribbon cable with it. Connect the ribbon cable to the 6-pin header beside the atmega328p IC, the little keying tab should go towards the outer edge of the board.

**NB!** The *extras* board should not be powered by any other means while doing this, for the safety of your equipment I recommend removing all other cables from it.
**NB!** If you connect the *USBTinyISP* and your Windows 10 complains about the driver being missing, then you may have to install one manually. Unfortunately there isn't a completely straightforward way of doing this, but you can use the following [guide](https://learn.sparkfun.com/tutorials/tiny-avr-programmer-hookup-guide/driver-installation) on how to get this installed - to gist of it is to download [Zadig](https://zadig.akeo.ie/), start the software, select the device, click until you get **libusb-win32** before finally clicking install driver.

![Build 051](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_051.png)

From the [Arduino IDE](https://www.arduino.cc/en/software), which you've no doubt already installed sometime in the past - mainly given the fact that you've made it to this part of the documentation without loosing all hope at the sheer length of it (being verbose kind of requires it, usually at the cost of annoying people who know this stuff better than I do). From the *Tools*-menu, ensure that you've configured the *Arduino Uno* as your board type. Since we need have the Arduino IDE communicate through the *USBTinyISP*-module, we'll need to change the programmer selected to - well - "*USBTinyISP*". Finally select *Burn bootloader* from the same menu, watch it do it's work to completion then remove the cable and put the programmer into a drawer until the next time you need it.

![Build 052](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_052.jpg)
![Build 053](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_053.jpg)

At this point the Atmega328p on the board has become an almost complete Arduino Uno by itself. At the moment it'll have been initialized with the standard blink-sketch, but as we'll want to run more interesting things on it we need the [BaudrateConverter](https://github.com/tebl/BulkyMIDI-32/tree/main/software/arduino/BaudrateConverter)-sketch compiled and uploaded to it. For that we need to connect it over USB, but since the we don't actually have any onboard USB UART as found on a real Arduino UNO (which is why I said it was "*almost*" one) we'll need to connect using a *USB TTL Serial Adapter* such as the one that can be shown wired up below. Refer to the two pictures above to see how the two are connected, note that the black cable is ground and is connected to pin 6 on the board (pin 5 not connected).

![Build 054](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_054.png)

As we've previously changed the programmer to "*USBTinyISP*", we'll need to change that back to "*AVRISP MkII*" instead. Hit compile and if everything looks good, you can try to hit upload and hopefully it'll upload the sketch as expected. If not, ensure that you've selected the correct serial port from the ports menu - usually you can just disconnect the serial adapter to figure out which one disappeared, then reconnect it and select the correct one. If none show up, try another serial TTL adapter and alternatively a different set of dupont wires - both of these seem to have been produced without any attention to quality control.

The firmware itself can for the most part be configured using the jumpers at *J14* and *J15*, one is immediately above the other though for the default operation of the device as expected you won't need to add any jumpers here. Note that there are several modes of operation provided by the device, using the ASCII setting will decode and display MIDI messages on serial as they are received as input - unfortunately it'll easily overrun the serial buffers so this is mostly only be usable when debugging equipment that don't send large bursts of data at a time. 

## 1.8> Finishing touches
With the firmware in place, there isn't much more that is left to do other than connect the two modules together using the standoffs and finally add a faceplate to the top of the thing. If you have any caps that would fit onto the knurled shafts of the potentiometer, those would also go a long way towards finalizing the build process. Some of the rotary encoders may come with a D-type shaft instead, but it may be worth ordering one with the same shaft as the potentiometers - makes it a lot easier to find matching knobs.

![Build 080](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_080.jpg)

With all of that done, it's time to enjoy some game - or at the very least have it loop the games title music, just to listen to all the glory that is the Roland MT-32 (at least as close as we can get without buying one). 

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress. You can often get free shipping, but plan on waiting 3-4 weeks for delivery so plan accordingly.

As detailed elsewhere in the [build](#1-building-the-device) portion of this document, you can simply choose to install the features you want in order to cut down on the construction costs or simply limit yourself to those that you have the parts for. To keep the BOM-portion below somewhat readable, the item counts in parenthesis are optional and consists mainly of parts related to the baud rate conversion feature as well as additional *MIDI OUT* and *MIDI THRU* ports. Note that some of the listings have been repeated as they are listed with different description, so order what you need and check the list twice.

| Reference               | Item                                                              | Count | Order  |
| ----------------------- | ----------------------------------------------------------------- | ----- | ------ |
| BulkyMIDI-32 Extras     | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Extras_9be44f98.html)
| C1,C10                  | 100nF ceramic capacitor (5mm)                                     |     2 |
| C2,C5,C7 *              | 100nF ceramic capacitor (5mm)                                     |    (3)|
| C3,C4 *                 | 10pF ceramic capacitor (5mm)                                      |    (2)|
| C6                      | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| C8                      | 1uF electrolytic capacitor (5mm x 2mm)                            |     1 |
| C9                      | 10nF ceramic capacitor (5mm)                                      |     1 |
| D2,D4                | 5mm LEDs, preferably frosted (not the bright clear ones)          |    (3)|
| D3 *                    | 1N4148N small signal diode (DO-35)                                |    (1)|
| ENC1                    | [Vertical Rotary Encoder](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/Vertical%20Rotary%20Encoder) |    (1)|
| J1                      | 2.1mm x 5.5mm barrel plug                                         |    (1)|
| J4                      | 10-pin dual row female pin header (extra long, see [documentation](#16-connecting-the-boards)) |     1 |
| J2,J3,J5,J10,J11        | Female S-terminal 5pin DIN PCB                                    |    (5)|
| J6                      | RS-232-module                                                     |    (1)|
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
| U2 *                    | ATmega328P (DIP-28, narrow socket)                                |    (1)|
| U3 *                    | 6N138 opto-coupler (DIP-8)                                        |    (1)|
| U4                      | NE555P (DIP-8)                                                    |     1 |
| Y1 *                    | 16 Mhz crystal (HC-49S)                                           |    (1)|
| SW1 *                   | 6x6x5mm right-angle momentary button                              |    (1)|
| Mounting ***            | 20mm M2 screws                                                    |    (2)|
| Mounting ***            | 20mm M2 nuts                                                      |    (6)|
| Mounting ****           | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting ****           | Nylon M3x6mm nylon nuts                                           |     6 |

*) These components are only needed when installing the MCU for baud rate conversion.

***) These are used to hold the RS-232-modules in place, especially if you plan on installing two of them. With only the one module you can use shorter screws instead.

****) These are used in various places of the project, these are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need.