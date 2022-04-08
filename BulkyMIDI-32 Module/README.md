# BulkyMIDI-32 Module
The complete BulkyMIDI-32 consists of several separate PCB designs, this documentation covers the main module that enables you to use common functionality supported by the [mt32-pi](https://github.com/dwhinham/mt32-pi) firmware. Any additional modules such as the [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras), will have their own set of documenentation - so browse around to get the full picture (in particular when ordering parts).

![Finished unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-02-26%2001.01.24.jpg)
![Bare unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_040.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> I2S DAC](#12-i2s-dac)
  - [1.3> The switches](#13-the-switches)
  - [1.4> Adding connectors](#14-adding-connectors)
  - [1.5> Mounting the screen](#15-mounting-the-screen)
  - [1.6> Finishing touches](#16-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With the equipment sorted, now comes the shopping - so head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. Note that with sites such as ebay, AliExpress and similar sites that sell cheap chinese components, you'll need to treat these as a suggested search term and look for something that matches the gallery pictures.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. The single 1n4148 diode has also been installed, pay particular attention so that the black band of the components matches up with the markings on the PCB.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_003.jpg)

Sockets should be installed for the two ICs needed for the complete unit - you could probably manage without them if you know that you're using known good parts. However, they're cheap and you could probably afford to be quite so *cheap*! 

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_004.jpg)

We've also gone ahead and installed our non-polarized capacitors - they should in theory be something called an *X7R* or *film* capacitors. I don't have any of those, so I just used the regular stuff I have around the workshop instead (it'll be fine - I probably wouldn't be able to tell the difference anyway).  

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_005.jpg)

Next step is adding the female 40-pin header, this is where we'll be plugging in our Raspberry Pi 3 or 4 board at a later point in time.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_006.jpg)

Speaking of capacitors, we'll just go ahead and install the polarized ones as well - of which, there are 10 (unless my counting is *off* or outdated, that's two in binary). As polarized as they are, we need to ensure that these are installed the right way around - the stripe on the side of the capacitor denotes the negative side of it (not the correct term I fear) and this should match the filled in area on the footprint. When in doubt, the longer pin goes into the other hole (the one marked with a "+").

Also added is your common DC barrel connector, these are notorious for going in crooked so make sure to only solder one point - reheat and adjust until satisfied with the result. Solder remaining pins before continuing.

## 1.2> I2S DAC
If you've ever used a Raspberry Pi module as some sort of desktop solution you may already have noticed the rather horrible audio quality, which is why there's a separate DAC included in the design. The version of the board used is the GY-PCM5102 module commonly found on ebay, AliExpress and similar sites - just look for the purple colour when browsing listings.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_007.jpg)

There are a set of solder jumpers on the underside, you need to check that these are set up according to what is shown above. These'll be inaccessible after solder the modules together, so this is definitely the time for checking it twice. H3L should be linked in the left position, the remaining in the right position. I've also gone ahead and added the pin headers to the board.

![Build 008](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_008.jpg)
![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_009.jpg)

Here we've just gone ahead and soldered it to the main board. On the underside there are some solder bridges that can be added, these'll send the analog audio signal to the extras board connector. Personally I just solder them so that they're ready for the extras board - sound aficionados may appreciate the option not to, but again I just wasn't able to detect any difference.

## 1.3> The switches
The switches can be installed in several ways, mostly depending on your own preferences for doing so. While the won't be anything wrong with installing all of it as you see fit, from a usability standpoint it would make the most sense to pick one of the following options:

1. Install all four switches on this module, link **SW4_SEL** pins 1-2 on the back to use them as indicated. This option is shown in the pictures below.
2. Using a [faceplate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA1) with the *synth* as well as *volume up* on it, in this case you only install the two switches on the right and link **SW4_SEL** pins 2-3 on the back.
3. Using the [extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras) board with a rotary encoder, in this case you'll skip the installation of the *volume up* and the *volume down* switches - linking **SW4_SEL** pins 1-2 on the back.

![Build 020](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_020.jpg)
![Build 021](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_021.jpg)

## 1.4> Adding connectors
The number of connectors needed would depend on what you want, but I recommend adding both of the 5-pin DIN connectors to the board - the left one is used with data into the device, more than likely this is either your computer with a suitable MIDI-adapter or a keyboard. The right one is for MIDI-output from the device, mostly when you want to chain it to other MIDI-devices.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_010.jpg)

Depending on the faceplate you've chosen, you may need the 10-pin female header at the top-left corner to carry the signals for the switches. If you chose a faceplate such as [Faceplate FA2](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA2) without any active components, then you probably won't need it at all.

![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_011.jpg)

Given that the next step will be installing the display, we'll need to adjust its mounting angle to fit with everything in place - for that we need the Raspberry Pi and faceplate in place. The underside of the Raspberry Pi is supported by some 9mm M3 hex standoffs, given the lack of availability for this length I've filed a bit off some of the 10mm ones I had around the workshop. The faceplate will be mounted on 15mm M3 nylon standoffs that we've also gone ahead and installed.

![Build 030](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_030.jpg)

## 1.5> Mounting the screen
For this project you can use the standard 0.96 inch I2C OLED displays available from just about anyone who peddles in Arduino modules, but as a I wanted a bit more flair I opted to install a 1.3 inch display instead. They have a mostly compatible display chip and offers the same amount of actual pixels, just slightly bigger.

![Build 031](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_031.jpg)

One thing you need to take note of is the organization of the pins, in this case GND is pin 1. Especially the 0.96 inch displays seems to randomly come with the GND and VCC pins swapped around, meaning that if you're not careful you'll easily destroy the display by wiring it up the wrong way. We'll get to that in a second though.

![Build 032](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_032.jpg)

It's not easy to see in this picture as it is a display recycled from an earlier revision, but I used some long pin headers instead of the regular kind here - they're made of a softer metal and easily bent into the correct position for the display. As some of the backing will be sitting up against the Raspberry Pi I added some tape to the back in order to avoid any unintentional accidents.

![Build 033](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_033.jpg)

Remember when I mentioned earlier about wiring up the display correct? This is where you do that. Given the display shown earlier has GND as pin 1, then we need to add a couple of solder bridges to the back of the board - both across pins 1-2 (arrow marks pin 1). If on the other hand, you had VCC as pin 1 - then you'd link pins 2-3 on both of these instead.

![Build 034](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_034.jpg)

With the faceplate installed, bend the display pins slightly so that they go into the holes on the board - adjust their position so that the display sits evenly against the faceplate without looking crooked. Solder one of the display pins on the bottom of the board, readjust as needed before soldering the remaining pins.

## 1.6> Finishing touches
If you've made it this far, you should hopefully be ready to start using it. Check out the additional documentation for [setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md), mainly taking care of setting up your memory with the configuration to match the hardware you've just built. [Getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) goes through some of the low-hanging fruits when it comes to actually playing music through it.

![Build 042](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_042.jpg)

The device is powered using a 5v DC barrel jack (center positive) with sufficient amperage to support the version of the Raspberry Pi module you are using. These should be easy to obtain from your favourite electronics vendor, just make sure that it's from a somewhat respected brand.

The Raspberry Pi 4 is significantly slower to boot than their previous generation, so give it a few more seconds before panicking - you should get something on your I2C screen after a short while. If you don't, remove the Raspberry Pi and connect it to HDMI and see if it looks the boot screen changes with or without the memory card inserted (MT32-PI doesn't generate a picture, but it'll be different from not being able to boot such as when a memory card is unavailable or unbootable). You should also doublecheck that you set up the [configuration](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md) to match the type of display you are using or its address may have been set differently.

![BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_050)

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
| IC1                   | 1.3 inch I2C OLED display (can use 0.96 inch display also)        |     1 |
| J1                    | 2.1mm x 5.5mm barrel plug                                         |     1 |
| J2, J3                | Female S-terminal 5pin DIN PCB                                    |     2 |
| J4                    | 10-pin female header                                              |    (1)|
| J5                    | 5-pin right angle pin header                                      |    (1)|
| J6                    | 4-pin right angle pin header                                      |    (1)|
| J7                    | 2x10 pin header (mounted on underside for extras board)           |    (1)|
| R1,R2,R4,R5,R6        | 220 ohm resistor                                                  |     5 |
| R3                    | 1k ohm resistor                                                   |     1 |
| SW1-SW4               | 6x6x5mm right-angle momentary button                              |     4 |
| U1                    | 74HCT14 (DIP-14)                                                  |     1 |
| U2                    | H11L1M opto-coupler (DIP-6)                                       |     1 |
| Mounting ****         | Nylon M3 hex standoffs 15mm (M-F)                                 |     4 |
| Mounting ****         | Nylon M3 hex standoffs 10mm (9mm cut down) (M-F)                  |     2 |
| Mounting ****         | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****         | Nylon M3x6mm nylon nuts                                           |     6 |

****) These are used in various places of the project, these are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need.