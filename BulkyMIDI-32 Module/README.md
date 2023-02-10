# BulkyMIDI-32 Module
The complete BulkyMIDI-32 consists of several separate PCB designs, this documentation covers the main module that enables you to use common functionality supported by the [mt32-pi](https://github.com/dwhinham/mt32-pi) firmware. Any additional modules such as the [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras), will have their own set of documenentation - so make sure that you browse around to get the full picture (especially while ordering parts).

![Finished unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2017.17.09.jpg)
![Bare unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_040.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> I2S DAC](#12-i2s-dac)
  - [1.3> User interface](#13-user-interface)
    - [1.3.1> Basic interface](#131-basic-interface)
      - [1.3.1.1> Mounting the screen](#1311-mounting-the-screen)
    - [1.3.2> Front panel](#132-front-panel)
  - [1.4> Adding connectors](#14-adding-connectors)
  - [1.5> Finishing touches](#15-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *mt32-pi* using the module alone, you can also build the complete version of it - including front panels, faceplates that goes on the top as well as *extras*-module for additional functionality. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there so I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sell cheap chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed, so you'll need to consider the description listed as suggested search terms.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. The single 1n4148 diode has also been installed, pay particular attention that the black band of the components matches up with the markings on the PCB.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_003.jpg)

Sockets should be installed for the two ICs needed for the complete unit - you could probably manage without them if you know that you're using known good parts. However, they're cheap and you could probably afford to be quite so *cheap*!  I recommend tacking opposing corners into place, then reheat and push flush against the board before soldering the remaining pins.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_004.jpg)

We've also gone ahead and installed our non-polarized capacitors - they should in theory be something called an *X7R* or *film* capacitors. I don't have any of those, so I just used the regular stuff I have around the workshop instead (it'll be fine - I probably wouldn't be able to tell the difference anyway).  

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_005.jpg)

Next step is adding the female 40-pin header, this is where we'll be plugging in our Raspberry Pi 3 or 4 - sometime in the future.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_006.jpg)

Speaking of capacitors, we'll just go ahead and install the polarized ones as well - of which, there are 10 (unless my counting is *off* or outdated, that's two in binary). As polarized as they are, we need to ensure that these are installed the right way around - the stripe on the side of the capacitor denotes the negative side of it (not the correct term I fear) and this should match the filled in area on the footprint. When in doubt, the longer pin goes into the other hole (the one marked with a "+").

Also added is your common DC barrel connector (5.5mm x 2.1mm), these are notorious for going in crooked so make sure to only solder one pin to get started. Reheat and adjust until perfectly satisfied with the result, then solder in the remaining pins before continuing.

## 1.2> I2S DAC
If you've ever attempted to use a Raspberry Pi module as some sort of desktop solution, you may already have noticed the rather horrible audio quality coming out of its audio jack. For this reason alone, we need to include a separate DAC as part of the design. While there are a few variants on sale, the one that is compatible with this design is listed as a *GY-PCM5102*-module - commonly found on ebay, AliExpress and places known for cheap components. When in doubt, look for the colour purple among when the store listings.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_007.jpg)

There are a set of solder jumpers on the underside, you need to check that these are set up according to what is shown above. These'll be inaccessible after solder the modules together, so this is definitely the time for checking it twice. H3L should be linked in the left position, the remaining in the right position. I've also gone ahead and added the pin headers to the board.

![Build 008](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_008.jpg)
![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_009.jpg)

Here we've just gone ahead and soldered it to the main board. On the underside there are some solder bridges that can be added, these'll send the analog audio signal to the extras board connector. Personally I just solder them so that they're ready for the extras board - sound aficionados may appreciate the option not to, but again I just wasn't able to detect any difference.

## 1.3> User interface
The user interface can be added to the *BulkyMIDI-32* in several ways though at the moment only two variants will be covered. The first one, covering basic interface functionality, is intended for putting together a cheaper version - only requiring this module. The second is the more stylish and feature-complete version of the *BulkyMIDI-32*, this mounts all of the buttons as well as the display on a separate [front panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel)-module. 

- [1.3.1> Basic interface](#131-basic-interface)
  - [1.3.1.1> Mounting the screen](#1311-mounting-the-screen)
- [1.3.2> Front panel](#132-front-panel)

### 1.3.1> Basic interface
**WARNING!** The pictures for this section are outdated, but as long as you follow the descriptions you'll find that although the position of the components have been moved around to put the display in the middle of the device. Despite this, the process should be comparable.

When you want to build a simpler version of the *BulkyMIDI-32*, the switches will be installed directly on the module as one would expect. This configuration requires that you link **SW4_SEL** pins **1-2** on the back of the PCB as well.

![Build 020](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_020.jpg)
![Build 021](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_021.jpg)

**NB!** If you've already built a previous version of the [extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras)-board the separate adapter board for the rotary encoder, then you can choose to skip the installation of *volume up* and the *volume down* switches.

#### 1.3.1.1> Mounting the screen
For this project you can use the standard 0.96 inch I2C OLED displays available from just about anyone who peddles in Arduino modules, but as a I wanted a bit more flair I instead opted to install a 1.3 inch display. They have a mostly compatible display chip driving it, offering the same amount of pixels - each pixel is just slightly bigger.

![Build 031](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_031.jpg)

**WARNING!** One thing you need to take note of is the organization of the pins, in this case GND is pin 1. Especially the 0.96 inch displays seems to randomly come with the GND and VCC pins swapped around, meaning that if you're not careful - you'll easily destroy the display! We'll cover all of that though, so no worries as long as you follow the instructions.

![Build 032](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_032.jpg)

It's not all that easy to spot in this picture as the display was recycled from an earlier project of mine, but the key to accurately mounting the display somewhat straight is that I've used the long variety of pin headers - they're made of a softer metal and easily bent into the correct position for the display. As some of the backing will be sitting up almost up against the Raspberry Pi, I've added some tape to the back as well in order to avoid any unintended accidents.

![Build 033](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_033.jpg)

Remember when I mentioned earlier about wiring up the display correct? This is where you do that. When viewed from the front, the display pictured has GND as the first pin. To wire up this correctly, there are a couple of solder bridges near the display connector that we need to link correctly. Given this display, we short across pins **1-2** (the little arrow marking pin 1) for the both of them. If on the other hand, you had VCC as the first pin - then you'd instead link pins **2-3**.

![Build 034](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_034.jpg)

If you've chosen to build a basic unit with the faceplate, then this is probably a good time to get that installed on there - mainly as it'll act as a guide when mounting the display. Turning the display upside down as pictured, insert the pins into the holes and gently bend the pins until you get an orientation that looks somewhat straight. Solder the outside pins into place, reheat and reorient the display until you're happy with the end result. Solder into place the two remaining pins before continuing.

### 1.3.2> Front panel
This section assumes that you've chosen to install a front panel for use with the *BulkyMIDI-32*, this is a bit more advanced way of installing the components for the user interface (switches, OLED-screen and rotary encoder). Building up the [front panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel) in details will be covered by its own documentation, but as it is closely designed for use with this module - some of the information may be duplicated between the two documents. 

![Build 015](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_015.jpg)

A front panel that has been prepared for installing on the module is shown above, in particular you should note that a display has not yet been installed. The reason for this is that we need to get the alignment correct.

Looking at the front panel you've probably noticed that there are some tabs sticking out, these have been designed so that they slot into the main module as well as the faceplates that go on top. The purpose of these is so that every time you're pressing the buttons, you aren't simply bending a comparatively weak set of pin headers that'll be poking through the board. Without soldering anything, insert it into place and fix the faceplate temporarily into place.

![Build 016](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_016.jpg)

If it feels like any of the boards want to bend or not sit straight, check the alignment of the hex standoffs so that they match you can barely see in the picture above. The clue here is that the two sets of standoffs, both the horizontal and the vertical ones need to have a flat side towards eachother - depending on the production of the components you may need to shave a bit off the edge pointing directly up and down to give them a bit more room. I had some issues where the tabs lacked a sharp edge and was binding against the cutout in the boards, these can be cleaned up using a sharp knife (in particular I had this issue when it was produced by JLCPCB as compared to PCBWay). When satisfied with the alignment, you can finally solder the two boards together.

I'm not going to cover the installation of the display in great details, as that would be duplicating a significant portion of the documentation for the [front panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel). In particular there are couple of solder bridges on the back that need to be set up correctly to match the display you're using. Not paying attention to this step will kill your display, at best it simply won't work.

![Build 017](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_017.jpg)

The display should have had some standard pin headers added to them, then simply insert the pins into the front panel without soldering. Add the [front panel faceplate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) using screws, allowing the display to flop around between the two front panel boards. Orient the display as correctly as you can, then solder one of the pins into place - reaheat and move it around as needed until you're happy with it it - the display should be straight when viewed from the front window, it should also be mostly flush against it. Solder the remaining pins to finish the installation.

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_012.jpg)

## 1.4> Adding connectors
The number of connectors needed would depend on what you want, but I recommend adding both of the 5-pin DIN connectors to the board - the left one is used with data into the device, more than likely this is either your computer with a suitable MIDI-adapter or a keyboard. The right one is for MIDI-output from the device, mostly when you want to chain it to other MIDI-devices.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_010.jpg)
![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_011.jpg)

One slightly annoying part of using these female connectors with the Raspberry Pi is that the height between the two boards will be around 11mm, which is mainly just a problem because I've not seen a vendor selling a cheap one that is this height (plenty of 8mm, 10mm and 12mm standoffs to go around). We could simply just leave it hanging there, but with the prices of these boards we can't do that. Not even close. Luckily, the standoffs have just about enough of a screw on them so that we can add an m3 nut to an 8mm hex standoff and end up with 11mm. Install two of them in the Raspberry Pi mounting holes and now we have something for it to rest on.

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_012.jpg)

The picture should resemble what you've built so far, depending somewhat on the option you chose for the user interface (the version with front panel is shown).

## 1.5> Finishing touches
If you've made it this far, you should hopefully be ready to start using it. Check out the additional documentation for [setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md), mainly taking care of setting up your memory with the configuration to match the hardware you've just built. [Getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) goes through some of the low-hanging fruits when it comes to actually playing music through it.

![Build 042](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_042.jpg)

The device is powered using a 5v DC barrel jack (center positive) with sufficient amperage to support the version of the Raspberry Pi module you are using. These should be easy to obtain from your favourite electronics vendor, just make sure that it's from a somewhat respected brand.

The Raspberry Pi 4 is significantly slower to boot than their previous generation, so give it a few more seconds before panicking - you should get something on your I2C screen after a short while. If you don't, remove the Raspberry Pi and connect it to HDMI and see if it looks the boot screen changes with or without the memory card inserted (MT32-PI doesn't generate a picture, but it'll be different from not being able to boot such as when a memory card is unavailable or unbootable). You should also doublecheck that you set up the [configuration](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md) to match the type of display you are using or its address may have been set differently.

![BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_050.jpg)

If you intend to use the BulkyMIDI-32 along with [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras), now is a good time to get started on following the build instructions for building up one of those as well. Interconnecting them vertically is done using some extra length female pin headers on the extras board and some simple dual row pin-headers on the underside of this board. The board acts as an expansion, adding several of the features and options that I could not easily fit within the main boards dimensions. If you need MIDI THRU ports, passive audio mixing as well as one or two RS232-module or wanted to use a rotary encoder then that's where you'll find these options.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| BulkyMIDI-32 Module   | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_35d2ed18.html)
| A1                    | 2x20 pin female header                                            |     1 |
|                       | Raspberry Pi version 3 or 4                                       |     1 |
| A2                    | GY-PCM5102 I2S DAC (the purple kind)                              |     1 |
| C1,C3,C4              | 100nF ceramic capacitor (5mm)                                     |     3 |
| C5                    | 100uF electrolytic capacitor (6.3mm x 2.5mm)                      |     1 |
| C6                    | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| D1                    | 1N4148N small signal diode (DO-35)                                |     1 |
| ENC1                  | 5-pin right angle pin header                                      |    (1)|
| IC1 *2                | 1.3 inch I2C OLED display (can use 0.96 inch display as well)     |     1 |
| J1                    | 2.1mm x 5.5mm barrel plug                                         |     1 |
| J2, J3                | Female S-terminal 5pin DIN PCB                                    |     2 |
| J5                    | 5-pin right angle pin header                                      |    (1)|
| J6                    | 4-pin right angle pin header                                      |    (1)|
| J7                    | 2x10 pin header (mounted on underside for extras board)           |    (1)|
| R1,R2,R4,R5,R6        | 220 ohm resistor                                                  |     5 |
| R3                    | 1k ohm resistor                                                   |     1 |
| R7 *1                 | 330 ohm resistor                                                   |   (1)|
| SW1-SW4 *2            | 6x6x5mm right-angle momentary button                              |     4 |
| U1                    | 74HCT14 (DIP-14)                                                  |     1 |
| U2                    | H11L1M opto-coupler (DIP-6)                                       |     1 |
| Mounting *3           | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting *4           | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting *3           | Nylon M3 hex standoffs 8mm (M-F)                                  |     6 |
| Mounting *3           | Nylon M3x6mm nylon screws                                         |     8 |
| Mounting *3           | Nylon M3x6mm nylon nuts                                           |     6 |

1) This is the resistor for the power LED mounted on front-facing panel, the value need to be sized according to the type of LED used. This value is suitable for a red LED of the older type, for any kind of modern component you'll need a value significantly higher (I tend to use 2k2 or 3k3 here depending on the colour).
2) These components are only used when no other PCBs will be used, ie. no front panel.
3) These are used in various places of the project, these are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need.
4) These are used with a faceplate and are installed on the bottom of the unit. When used with the extras-unit, these will be replaced by another set (4x) of 20mm (M-F) standoffs and another set of nuts to go on the bottom.