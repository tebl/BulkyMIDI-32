# BulkyMIDI-32 Input Switch
The complete *BulkyMIDI-32* consists of several separate PCB designs, many of them adding entirely separate functionality that can be used with or even without the main unit. This specific module, once fully assembled will allow you to switch between four different MIDI-inputs.

![Finished unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_041.jpg)

The selected input will be hooked up to the three thru-ports on the unit, allowing you to quickly switch between different keyboards, vintage computers and so on. Think of it as a simple 4-to-1 *MIDI Input Selector* chained to a 1-to-3 *MIDI Thru Box*. If you came here looking for something to switch between different audio sources, then have a look at [BulkyMIDI-32 Audio Switch](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch) instead.

For the design itself, I didn't want to use a microcontroller for such a trivial task, so it is implemented using logic chips instead. The end result is a set of flip-flops with a master reset, this latches the button pushed and you get an exciting little click from the corresponding relay. While this does mean that the device only switches electrical signals with the caveat that it doesn't have an understanding of MIDI-messages, and so it will cut regardless of what's passing through it. The upside is that since there is not processing, there is no *significant* delay added to it either.

![Bare unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_040.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Without front panel](#12-without-front-panel)
  - [1.3> Including front panel](#13-including-front-panel)
  - [1.4> Finishing touches](#14-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *BulkyMIDI-32 Input Switch* by using this module by itself, there is certainly a case for having the option of building a complete version of it - this would normally include a front panel, a faceplates for the top of the unit as well as a cosmetic one to go on the front. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there so I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sell cheap chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed, so you'll need to consider the description listed as *suggested search terms* instead of looking at them as part numbers. I can't provide you with anything else because I can't afford to do so.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (most of the information should be clearly marked on the silkscreen).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_003.jpg)

Here we've already gotten started by installing all of the resistors needed, making sure that we use the correct values for each position on the board. While doing this, it is always a good recommendation to try and keep the colour bands in the same orientation - mostly because it makes it easier to spot mistakes later on. In various positions on the board you'll find five 470 &#8486;, these are the load resistors for the LEDs (includes the one on the front panel). This value may be suitable for use with cheap coloured LEDs, but for those that are *clear*, *blue* or in any way marked as *bright* - then you need to use a significantly higher value here. When in doubt, either test with a CR2032-battery - or - just install 2k2 &#8486; or even 3k3 &#8486; depending on your preference.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_004.jpg)

There are quite a few 1n4148 diodes in several locations on the board, these are polarized and for that reason we need to pay particular attention that the black band on the component matches up with those of marked on the PCB.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_006.jpg)

Sockets should be installed for the singe IC needed for the complete unit. With that in place I've also installed the monolithic disc capacitors, these are all unpolarized and for the ones without any specific markings we will install 100nF capacitors (the code *104* will be printed on the component). Note that a single capacitor marked *C10*, directly to the right of *U1*, has a different value from the others, it is 22nF and will have the code *223* printed on the component. This is also the only that has a value printed on the PCB.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_010.jpg)
![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_011.jpg)

The next component we're going to install are the *2n3904* NPN-transistors, these have a flat side and a round side that needs to be matched to the shape printed on the silkscreen. Putting them in the wrong way around will usually create tiny smoke-bombs instead of performing their intended purpose. While there are components available that have pre-bent legs matching those on the footprint, I've not seen them at a reasonable price - so I just bend the legs outward myself and firmly push down on them until they sit slightly above the board. Doing it this way will usually end up with some twisting slightly, but that is the cost of doing it the cheap way.

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_012.jpg)

Next up are the polarized capacitors, these need to go in the right way for them to function as expected. The stripe on the side of the capacitor denotes the negative side of it, this should be matched up with the filled in area of the footprint. When in doubt, just put the longer pin into the other hole (marked with a "+"). For the most part we won't be anywhere near any relevant voltage rating, but the higher rated ones will generally be physically larger - the one at *C2* should be rated at 16v or 25v, mainly as we physically won't have room for much else.

![Build 015](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_014.jpg)

Here we've added a common DC barrel connector (5.5mm x 2.1mm) to the board, followed by the four HK-19F-DC 5V relays. The relays have a tendency to come with crooked pins and we may need to do a bit of careful bending in order to get them into the board, there is also a little indent on one end that need to matched up with that on the board (similar to those of ICs).

> NB! If at some point you're wondering why there are only two yellow relays in this previous image as well as some of those shown later, this is simply because I ran out and had to wait for more to arrive in the mail.

Depending on your life decisions up to this point, the assembly from this point continues in one or the other direction:
- [1.2> Without front panel](#12-without-front-panel)
- [1.3> Including front panel](#13-including-front-panel)

## 1.2> Without front panel
![Build 020](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_020.jpg)

So you resisted the temptation to build the complete version, choosing instead to cut corners wherever possible? Well, that's OK too. I'm not judging. Call it a general observation.

There's not much that we need to do, mainly just install the single 3mm power LED (the longer LED goes into the round pad). The four switches are standard right-angle switches, the recommended way to install them is simply to solder a single pin then reheat and adjust its alignment before soldering in the rest of the pins.

If you have a faceplate, the board that goes on top of the unit, add some 20mm hex standoffs to each of the four corners before continuing on to the next part of the build.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.3> Including front panel
![Build 030](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_030.jpg)

The [Input Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch%20Panel) have its own set of documentation going into the various steps required to put it together correctly, a finished unit looking like what is shown above. In particular we need to ensure that the hex standoffs have been aligned so that a *flat* side is lined up with the left and right edges of the board, the nuts on the back needs to have a similar flat side matched to the top and bottom. You may need to trim these slightly with a sharp knife or a file. 

![Build 031](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_031.jpg)

Starting with installing 20mm standoffs, making sure that these have a *flat* side pointing towards the inside of the PCB. With the alignment correct you should be able to line up the pin headers, insert the panel into the board without having to use more than a minimum amount of force. Your selected top faceplate is installed on the top of it all, here I'm just using a second set of standoff instead of screws since we'll be removing them again later.

![Build 032](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_032.jpg)

At this point we've not actually soldered them together yet, mostly to ensure that everything comes together correctly before we actually do so. Push the panel firmly so that it sits towards the back of the cutouts, then solder the pins into place - afterwards we just trim the excess parts of the pin headers.

![Build 033](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_033.jpg)

When soldered, everything should stay where it should be and before continuing on we just remove the faceplate again before moving onto the next step.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.4> Finishing touches
![Build 040](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_040.jpg)

If you've made it this far, you're almost ready to simply start using it. What's missing in order to test it is the three ICs that needs to be inserted into their sockets, so just get that out of the way before you forget to do so. Each IC needs to be installed in their specified orientation, that usually means matching up the indent on the socket to the indent or dot on your chips.

The device is powered using a 5v DC barrel jack (center positive) similar to just about everything else found in this repository, just make sure that what you're using is from a somewhat respected brand. Personally I'm using a *MEAN WELL GST25B05-P1J* that has served me well for these projects, but this specific model has a Europlug on it so you may need to look for something more relevant to your needs. While you may be tempted to plug MIDI-devices into it at this point, at least connect it to power by itself - and see if something explodes first. When clicking a button on the front you should be able to hear a small click from the corresponding relay.

![Build 041](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_041.jpg)

The only step that's remaining is to just screw the faceplates back on the top of the device with proper screws, once that's in place we can also add the front faceplate as well. All that remains now is trying it out with equipment that you would consider easily replacable, such as other *BulkyMIDI-32* designs.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference                  | Item                                                              | Count | Order  |
| -------------------------- | ----------------------------------------------------------------- | ----- | ------ |
| PCB                        | Fabricate using Gerber files                                      |     1 | PCBWay
| [Panel PCB](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch%20Panel) | Fabricate using Gerber files                                      |    (1)| PCBWay
| C1,C3-C5,C7-C9             | 100nF ceramic capacitor (5mm)                                     |     7 |
| C10                        | 22nF ceramic capacitor (5mm)                                      |     1 |
| C2,C11                     | 10uF electrolytic capacitor (4mm x 2mm)                           |     2 |
| C6                         | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| D1-D5,D10-D12,D16          | 1N4148N small signal diode (DO-35)                                |     9 |
| D19 *                      | 3mm LED                                                           |    (1)|
| J1                         | 2.1mm x 5.5mm barrel plug                                         |     1 |
| J2,J3,J5,J7,J8             | Female S-terminal 5pin DIN PCB                                    |     5 |
| J9-J10                     | Female S-terminal 5pin DIN PCB                                    |    (2)|
| K1-K4                      | HK19F-DC5V relay                                                  |     4 |
| Q1-Q4                      | 2N3904 transistor (TO-92)                                         |     4 |
| R5,R20,R21,R23,R24,R26,R27 | 220 ohm resistor                                                  |    (5)|
| R16-R18,R25,R28 *          | 470 ohm resistor                                                  |    (5)|
| R10-R12,R19                | 1k ohm resistor                                                   |     4 |
| R6                         | 2k2 ohm resistor                                                  |     1 |
| R29                        | 4k7 ohm resistor                                                  |     1 |
| R7,R9,R13-R15,R22          | 10k ohm resistor                                                  |     6 |
| R1-R4,R8                   | 100k ohm resistor                                                 |     5 |
| SW1-SW4 *                  | 6x6x5mm right-angle momentary button                              |    (4)|
| U1                         | CD40174BE (DIP-16)                                                |     1 |
| U2                         | 6N138 (DIP-8)                                                     |     1 |
| U3                         | 74HCT14 (DIP-14)                                                  |     1 |
| Mounting ****              | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting ****              | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****              | Nylon M3x6mm nylon nuts                                           |     4 |

*) You can choose to install a front panel, in which case you would skip the installation of the 3mm LED as well as the switches. The resistors will be used by the front panel.

****) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.