# BulkyMIDI-32 ExModule
The *BulkyMIDI-32* consists of several separate designs with the same styling, the *ExModule* specifically allows you to use modern Wavetable-modules such as those sold by serdashop.com (not affiliated with this project). Normally these would be installed onto a compatible vintage soundcard, but as it turns out - the machine I wanted to install one on had an AWE32 without the actual header - so instead of changing out the soundcard I built this instead.

![Finished unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_041.jpg)

What this actually does is add the circuitry that is needed to use them with any MIDI-capable soundcard, externally over a MIDI-cable. Check out the [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) part of the documentation, and while the text mainly covers the *BulkyMIDI-32* (Roland MT-32 emulation via mt32-pi) itself - it's all MIDI, and it should work just about the same. The only difference is that with the *ExModule* you'll be using real modules instead of emulating them.

![Bare unit](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_040.jpg)

As for what it looks like inside, there's really not a lot that is needed to make it work - and I was able to assemble most of it thank to the details still available on [atari.joska.no](https://atari.joska.no/db50xg/). While the page focuses on the Atari ST, the specifics are really the same regardless of platform. The source of his designs was based on an article in Elektor Electronics (july/august 1997), but as all of their articles have been permanently locked behind a paywall - I can't link you to a copy of it. In either case I more or less changed just about everything to use similar components as those featured elsewhere in this repository.

**NB!** This module only takes a 5V input, and does not have any way of generating the remaining voltages required by some vintage Wavetable-modules. There are references to a Power-module that could be created to provide those, but I don't have anything to test with it. Unless someone straight up gifts my one of their vintage modules to test with it, it won't be added.

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Without front panel](#12-without-front-panel)
  - [1.3> Including front panel](#13-including-front-panel)
  - [1.4> Finishing touches](#14-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *BulkyMIDI-32 ExModule* by using this module by itself, but there is certainly the option of building the complete version of it - that includes the front panel as well as two faceplates, one that goes on top of the device and one that mounts on the front. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there myself. For that reason I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sells affordable Chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed beyond the next couple of days, so you'll need to think of the descriptions listed as *suggested search terms* instead of part numbers.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (most of the information should be clearly marked on the silkscreen).

![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_003.jpg)

Here we've already gotten started by installing all of the resistors needed, making sure that we use the correct values for each position on the board. While doing this, it is always a good recommendation to try and keep the colour bands orientated the same way - mostly because it makes it easier to spot any mistakes later on. The two that goes in the bottom left corner goes to the LEDs, regardless of whether they are mounted here on the front panel. The values for these need to be adjusted according to the type and colour of the LEDs that you are using, in particular when using one that hasn't been dyed to a specific colour - then you will usually need to increase this value to something like 2k2 to avoid blinding yourself by looking at them.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_004.jpg)

Two different types of diodes are used, the 1N5819 is a Schottky diode and has a silver stripe on it that needs to be matched up with the markings on the board. The 1N4148 diode is probably more familiar to most, it similarly has a black band that instead denotes how to install it on the board.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_006.jpg)

Sockets should always be installed for the ICs, especially now that there are a lot of bad components floating around. It's always easier to solder something in that it is to remove them, so consider them a cheap insurance. With the sockets in place I've also installed the monolithic disc capacitors, these are all unpolarized and for the ones without any specific markings we will install 100nF capacitors (the code *104* will be printed on them). The single capacitor marked *C3* has a different value from the others, it is 10nF and will have the code *103* printed on it.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_007.jpg)

The next component we're going to install is a single *2n3906* PNP-transistors, these have a flat side and a round side that needs to be matched to what is printed on the silkscreen. While there are components available that have pre-bent legs matching those on the footprint, I've not come across them at a reasonable price - so I just bend the legs outward myself and firmly push down on them until they sit a bit above the board. They tend to twist a bit when pushing them into place, that is OK to a certain degree and you generally shouldn't force them too much.

![Build 008](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_008.jpg)

Next up are the polarized capacitors, these need to go in the right way for them to function as expected. The stripe on the side of the capacitor denotes the negative side of it, this should be matched up with the filled in area of the footprint. When in doubt, just put the longer pin into the other hole (marked with a "+"). For the most part we won't be anywhere near any relevant voltage ratings, but note that the higher rated ones will generally be physically larger so don't go overboard without measuring - a 16v rating should be enough for our purposes.

Note that the value of capacitor **C2** directly affects the timing of the missing pulse detector, the circuit that ensures that the activity remains solid instead of blinking (as long as we regularly receive data). If you want something that blinks more vigorously, lower the value to *1 uF*. The formula for calculating the timing used is  T = 1.1 * R1 * C2, which for the specified values means that we keep the LED on as long as we don't see any gaps that are longer than 0.33 seconds. Active MIDI keep-alive messages on more modern equipment is commonly sent out intervals of around 300ms, so that is the rationale for choosing a these specific values.

![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_009.jpg)

I designed the board for a PJ-307 3.5mm stereo audio sockets, but the similar PJ-317 may be used as well - both of these are common 5-pin sockets sold just about everywhere. While I've preferred to use green ones for audio output in other parts of the *BulkyMIDI-32* project, I didn't have one available and so I used this black one instead. Just don't confuse them with TRS-type A/B MIDI-cables.

![Build 011](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_011.jpg)

Adding the star of the show, the actual Wavetable-header - you may be slightly disappointed by the fact that it is just a segment of dual-row straight pin headers with a 2.54mm spacing. For power we're using a common DC barrel connector (5.5mm x 2.1mm) that have been soldered to the board, it is recommended that you only solder one of the pins at first so that you are able to reheat and reposition it if needed.

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_012.jpg)

Adding the actual MIDI-connectors is next, these are 5-pin DIN connectors that are used for many purposes - they'll be cheaper when not explicitly listed as a "MIDI-connector" (just a tip). Of the two, only the one marked *MIDI IN* is required. The second is marked *MIDI THRU*, it sends out a copy of the same data that was received by this device (without any kind of processing) - installing it allows you to also have a [Channel Monitor](https://github.com/tebl/BulkyMIDI-32/tree/main?tab=readme-ov-file#13-bulkymidi-32-channel-monitor) connected for some nifty effects. 

![Build 012](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_013.jpg)

If you've been following along, there's an empty spot marked *FB1* that could potentially take one of these small wired ferrite cores. I'm not sure if it is needed, but as the analog and digital grounds will have been connected on the modules themselves - I've simply skipped installing them here. That may be a good choice, or a bad one depending on what you're using it with. The good news is that you have the option to choose differently from me if you're able to tell the difference, because I can't.

Depending on your life decisions up to this point, the assembly from this point continues in one of two directions:
- [1.2> Without front panel](#12-without-front-panel)
- [1.3> Including front panel](#13-including-front-panel)

## 1.2> Without front panel
So you resisted the temptation to build the complete version, choosing instead to cut corners where possible? Well, that's OK too! I'm not judging, it was merely just a general observation.

There's not much that we need to do, mainly just install the two 5mm LED (the shorter leg of the LED goes into the hole with the square pad). Also install a right-angle switch.

If you have a faceplate, the board that goes on top of the device, make sure to add some 20mm hex standoffs to each of the four corners before continuing on to with the next part of the build.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.3> Including front panel
![Build 030](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_030.jpg)

The [ExModule Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel) have its own set of documentation going into the various steps required to put it together correctly, a mostly finished unit should look like what is shown above. In particular we need to ensure that the hex standoffs have been aligned so that a *flat* side is lined up with the left and right edges of the board, the nuts on the back needs to have a similar flat side matched to the top and bottom. You may need to trim these slightly with a sharp knife or a file. 

![Build 032](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_032.jpg)

Starting with installing 20mm standoffs to each of the four corners, making sure that these have a *flat* side pointing towards the inside of the PCB. With the alignment correct you should be able to insert the panel into the board without too much force, then your selected top faceplate is installed on top of the boards using temporary screws.

![Build 033](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_033.jpg)

Note that at this point we've not actually soldered them together yet, mostly to ensure that everything comes together correctly before we attempt to actually do so. Push the panel firmly so that it sits towards the back of the cutouts, then solder the pins into place. Afterwards we just trim the excess parts of the pin headers using some proper wire cutters, a flush-cut pair of pliers will usually just break if you use them for pin headers as the metal is too hard for them to reliably work with. When done, I recommend that you reflow all of the joints in case we cracked one of them while cutting of the pins.

When soldered, everything should stay where it is supposed to be. Before continuing on we just remove the faceplate again before moving on to the next step.

- [1.4> Finishing touches](#14-finishing-touches)

## 1.4> Finishing touches
![Build 035](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_035.jpg)

If you've made it this far, you're almost ready to simply start using it. What's missing in order to test it is the actual ICs that needs to be inserted into their sockets, so just get that out of the way before you forget to do so - the indent of the socket should be matched to pin 1 of your ICs, there they will either have a matching indent or a dot next to pin 1.

![MEAN WELL GST25B05-P1J](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/mean_well_psu.jpg)

The device is powered using a 5v DC barrel jack (center positive). Such a power supply should be easy to obtain from your favourite electronics vendor, just make sure that it's from a company that's at least somewhat respected. Personally I'm using a *MEAN WELL GST25B05-P1J*, but that may not be directly applicable to you due to this specific model having been made with a Europlug on it.

![Build 036](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_036.jpg)

At this point in the installation it may be tempting to just plug a Wavetable-module into it and start sending it some MIDI-data, but it may serve you better to be a bit more prudent. Plugging it into power by itself might allow it to blow up by itself instead of taking something *vintage* along with it, then introduce a modern MIDI-interface such as the Roland UM-ONE and have something attempt to send it data - see [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) for something more specific than what'll be provided for in this document. Once you can see that activity lights up according to what can be expected, meaning that it should light up as solid because a modern interface will continuously send it *keep-alive*-messages.

![Build 036](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_037.jpg)

Once satisfied that you're willing to risk a module, connect it up as shown above - preferably the *cheapest*, or just the one you consider easiest to replace! Make sure that you're not offsetting the pins in either of the directions when installing them, I don't know what would happen - but - I assume it won't be a *fun* experience. Repeat tests done earlier, hook up the stereo to an amplifier and you should be able to enjoy some music from your chosen module.

The only step that's remaining is to just screw the faceplates back on the top of the device, replacing those on the front if you have not already done so. With that done we're ready to start planning your next project, maybe a [BulkyMIDI-32 Channel Monitor](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel) for something more exciting to look at or the [BulkyMIDI-32 Play](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play) so that you can listen to MIDI-files without a computer attached to it.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis are either optional components, or they will only be installed in certain cases such as having functionally been moved to the [front panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel). Note that the panel also has its own BOM, make sure to check that out as well when you're ordering parts.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| PCB                   | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_6564c365.html)
| [Front Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel) | Fabricate using Gerber files                                      |    (1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_Panel_8050038f.html)
| [Front Faceplate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20ExModule%20FP1) | Fabricate using Gerber files                                      |    (1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_Faceplate_FP1_640ef0bc.html)
| [Top Faceplate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Fabricate using Gerber files                                      |    (1) | PCBWay
| C1,C4,C5,C7,C9        | 100nF (104) ceramic capacitor (5mm)                               |     5 |
| C2                    | 3.3uF electrolytic capacitor (5mm x 2mm)                          |     1 |
| C3                    | 10nF (103) ceramic capacitor (5mm)                                |     1 |
| C6                    | 470uF electrolytic capacitor (8mm x 3.5mm)                        |     1 |
| C8                    | 10uF electrolytic capacitor (5mm x 2mm)                           |     1 |
| D1,D2 *               | 5mm LED, preferably diffused variety                              |    (2)|
| D3                    | 1N4148N small signal diode (DO-35)                                |     1 |
| D4                    | 1N5819 Schottky diode (DO-41)                                     |     1 |
| FB1                   | Wired ferrite core (probably not needed)                          |    (1)|
| J1                    | 2.1mm x 5.5mm barrel plug                                         |     1 |
| J2                    | Dual-row straight pin header                                      |     1 |
| J3,J5                 | Female S-terminal 5pin DIN PCB                                    |  1 (1)|
| J4                    | PJ-307 3.5mm audio connector (5-pin TRS), (alternatively PJ-317)  |     1 |
| Q1                    | 2N3906 PNP-transistor (TO-92)                                     |     1 |
| R1                    | 100k ohm resistor                                                 |     1 |
| R2                    | 10k ohm resistor                                                  |     1 |
| R3                    | 1M ohm resistor                                                   |     1 |
| R4,R5 **              | 470 ohm resistor                                                  |     2 |
| R6,R10,R18            | 220 ohm resistor                                                  |     3 |
| R7                    | 47k ohm resistor                                                  |     1 |
| R8                    | 1k ohm resistor                                                   |     1 |
| R19                   | 2k2 ohm resistor                                                  |     1 |
| SW1 *                 | 6x6x5mm right-angle momentary button                              |    (1)|
| U1                    | 74HCT14 (DIP-14)                                                  |     1 |
| U2,U4                 | 555 (DIP-8)                                                       |     2 |
| U3                    | 6N138 optocoupler (DIP-8)                                         |     1 |
| Mounting ***          | Nylon M3 hex standoffs 20mm (M-F)                                 |     4 |
| Mounting ***          | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ***          | Nylon M3x6mm nylon nuts                                           |     4 |

*) You can choose to install a front panel, in which case you would skip the installation of the 5mm LEDs as well as the reset switch. Resistors R4/R5 will still be used by the front panel.
**) Resistors are used with LEDs, either installed here or on the front panel. As the choice of LED type and colour dictates the value of resistor, you need to pick something that is suitable here. If using modern bright LEDs, you will need to increase the value to at least 2k2 in order to have something that isn't considered uncomfortably bright.
***) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.