# BulkyMIDI-32 Module Panel
This is a front-facing panel for controlling the *BulkyMIDI-32 Module*, while optional by design I find that it makes the system a lot more enjoyable in use and looks better while on my desk.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_007.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *mt32-pi* using the module alone, you can also build the complete version of it - including front panels, faceplates that goes on the top as well as *extras*-module for additional functionality. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there so I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sell cheap chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed, so you'll need to consider the description listed as suggested search terms.

## 1.1> Soldering it together
![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_001.jpg)

The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_003.jpg)

The first component to install might be a bit backwards to normal convention, but I've started wth the 8mm hex standoffs. The hex shape needs to be rotated a flat edge lines up with the left and right edges of the PCB, the reason for this will become evident when we attempt to install it onto the main module. As these are just nylon, I've made things slightly easier for myself by using a sharp knife to trim a bit off the vertical edges of them - in particular the one sitting just above the power LED.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_004.jpg)

As the next step, I've skipped a bit too far ahead and simply added everything - starting with the right-angle pin headers that will be mounted on the backside of the PCB. The alignment of the remaining components need to be perfectly straight, so my recommendation is to insert them roughly into place then mount the [front plate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) on the top of it. A single pin of each component is then soldered, check the alignment and then reheat and adjust as needed. I prefer to push the LED slightly from the back to ensure that it is sitting flush against the front plate.

The front panel would then been removed again, mostly because it'll slightly be in the way when installing it onto the main [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module) PCB. Before continuing we need to deal with the solder jumbers found on the back, these are divided into two sets of jumpers that need to be added.

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_005.jpg)

The first pair marked **JP1/JP2** control the scroll direction of the rotary encoder, but for the most part you'd just solder both of these across pins *1-2* (the little triangle denotes pin 1). This should be fine for most of the rotary encoders that I've encountered, but in the case that they will appear to work backwards from what you expect - then move the solder bridge to pins *2-3* instead.

Next we need to deal with **JP3/JP4**, these are used to deal with the rather unfortunate situation caused by some manufacturers making changes to the pinout. Particularly this is a problem with 0.96" OLED displays, often you'll order a display based on the picture in the listing and receive a display with a different pinout than that of what you had ordered. The only way around it is to ensure that we handle that on our end of the hardware, for the specific display shown above you can see thet the first pin has been marked *GND* - for that reason we need to solder both jumpers across pins *1-2* (the little triangle denotes pin 1). If on the hand, *VCC* had been the first pin then we would instead need to solder both across pins *2-3*. Preferably double-check and triple-check this before continuing as the wrong setting will commonly destroy the display module.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_panel_006.jpg)

The actual installation of the display needs to be oriented perfectly against the front panel, but that part of the build details will be handled as part of the [build instructions](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Module/README.md#132-front-panel) for the [main](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module) module.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Panel PCB             | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Panel_17b7fa7c.html)
| D1                    | 5mm LEDs, preferably frosted (not the bright clear ones)          |     1 |
| ENC1                  | EC11 rotary encoder, 20mm. Preferably plum handle                 |     1 |
| IC1                   | 1.3 inch I2C OLED display (can use 0.96 inch display as well)     |     1 |
| J1                    | Breakable right-angle pin header                                  |     1 |
| SW1,SW2               | 6x6x12mm momentary button                                         |     2 |
| Mounting ****         | Nylon M3 hex standoffs 8mm (M-F)                                  |     4 |
| Mounting ****         | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****         | Nylon M3x6mm nylon nuts                                           |     4 |

****) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.