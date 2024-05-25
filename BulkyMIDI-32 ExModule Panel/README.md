# BulkyMIDI-32 ExModule Panel
This is a front-facing panel for controlling the *BulkyMIDI-32 ExModule*, it is optional by design. I do however find that it makes the system a lot more enjoyable to use, mostly by looking significantly better while sitting on my desk. While it functionally replaces some of the components on the main module, the components themselves are different - this document therefore have its own [BOM](#3-bom) at the bottom of this document. Keep this in mind when ordering parts.

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_010.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *ExModule* using the main module by itself, you can also build the complete version of the unit - that would include front panel as well as two faceplates, one goes on the top and the other for the front. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I generally can't afford to shop there. For that reason I usually make due with what I can find on such sites as ebay, AliExpress and any similar sites that commonly sell cheap Chinese components. The downside to this is that I won't be able to link to a part directly and expect it to be there two days for now, so you'll need to consider the description listed as *mere* suggestions of what to search for. The one you'll need will usually be the more common of the responses as I try to keep away from the more exotic options.

## 1.1> Soldering it together
![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_001.jpg)

The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 003](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_003.jpg)

The first component to install might be a bit backwards to normal convention, but I've started wth the 8mm hex standoffs. The hex shape needs to be rotated a flat edge lines up with the left and right edges of the PCB, the reason for this will become evident when we attempt to install it onto the main module. As these are just nylon, I've made things slightly easier for myself by using a sharp knife to trim a bit off the vertical edges of them - in particular the one sitting just above the power LED.

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_005.jpg)

As for the next step, I've skipped a bit too far ahead and simply added just about everything. I started with the right-angle pin headers, paying attention to the fact that they will be on the flipside of the PCB as compared to the other components. In order for the alignment of the remaining components to be perfectly straight, my recommendation is to just insert them into place the holes where they go - then mount the [front plate](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20ExModule%20FP1) on the top of it.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_006.jpg)

The only real stumbling block is getting the LED, the right way around. On some LEDs it's easy to see that there is a flat side to the bottom of it, on some it's not quite so easy to see this - so when in doubt, make sure to put the shorter leg of the LED into the hole with a square pad. Once you are ready to start soldering in the remaining components, a single pin of each component should then soldered - check the alignment, reheat and adjust if needed. I prefer to push the LED slightly from the back to ensure that it ends up sitting flush against the front plate (take care not to put your finger on the pin that you are heating up).

![Build 010](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_panel_010.jpg)

The completed unit is shown above, except that I am temporarily using some standoffs as the outer screws holding the faceplate onto the panel. You can use standard screws if you want to, I'm just using them during assembly as they are easier to remove by hand. For the installation of the panel it should mostly just slide into place, but all of that should be covered by the documentation for the [main](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule)-module.

**NB!** If you find that the panel doesn't quite slide into place, check that the standoffs on both the panel and main module have been rotated as described. Looking at the orientation of the pictures shown in this document, this means that both of them should have standoffs that have a flat side towards the left and right side of the PCBs.

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Panel PCB             | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Panel_17b7fa7c.html)
| D1,D2                 | 5mm LEDs, preferably diffused and not the bright clear ones)      |     2 |
| J1                    | Standard right-angle pin header (2.54mm spacing)                  |     1 |
| SW1                   | 6x6x12mm momentary button                                         |     1 |
| Mounting ****         | Nylon M3 hex standoffs 8mm (M-F)                                  |     4 |
| Mounting ****         | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****         | Nylon M3x6mm nylon nuts                                           |     4 |

****) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.