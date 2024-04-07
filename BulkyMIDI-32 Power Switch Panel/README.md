# BulkyMIDI-32 Power Switch Panel
This is a front-facing panel for controlling the *BulkyMIDI-32 Power Switch*, while optional by design I find that it makes the system a lot more enjoyable in use and on my desk. The main PCB didn't have suffiecient room for the LEDs either, so if you'd like a little feedback on the currently active input channel then this is the panel for you.

![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_009.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *power switch* using the main module by itself, you can also choose to build the complete version of it - this includes front panels and faceplates. 

Now that you know what you want to build, we can get started on the most expensive step in any build process - shopping! So, head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there so I usually make due with what I can find on sites such as ebay, AliExpress and any similar sites that sell cheap chinese components. The downside to this is that I can't link to a part directly and expect it to stay listed, so you'll need to consider the description listed as suggested search terms.

## 1.1> Soldering it together
![Build 001](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_001.jpg)

The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_003.jpg)

The first component to be added is the right-angle pin headers, these are soldered on the front side of the board instead of the component side. I've found that these are often somewhat warped, so I usually try to just solder the outer edges first, then reheat and adjust so that the plastic part sits completely flush against the board before tackling the remaining pins.

![Build 004](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_004.jpg)

The next component to go on are the 8mm hex standoffs, they in particular need to be positioned so that a flat edge lines up with the lef and right edges of the PCB. As these are just nylon, I've made things slightly easier for myself by using a sharp knife to trim a bit off the vertical edges of them - in particular the one that sits just above the power LED.

![Build 005](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_005.jpg)

Here I've simply inserted the LEDs into the footprints (longer pin goes into the round pad), the same goes for the six switches before adding the front panel to the front of it.  Continuing on with the LEDs I'll tack one of the pins into place, then while reheating the pin I'll try and push slightly on it to ensure that it is perfectly aligned with the holes on the front panel before soldering the remaining pin. The switches mostly stick to their expected alignment, but feel free to use the same method except that you push from the from.

![Build 006](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_006.jpg)

The front panel have been removed again, mostly because it'll slightly be in the way when installing it onto the main [Audio Switch](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch) PCB. If you're a perfectionist like me, you may want to deal with some of the light bleed that you'll inevitably get between the LEDs.

![Build 007](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_007.jpg)
![Build 009](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_panel_009.jpg)

The easiest solution for this came to me in the middle of a dark and stormy night, standard heat shrink tubing with a diameter of at least 5mm. Using an 8mm hex standoff as a guide and a sharp knife, I cut it up into 8mm segments that was then just put on top of the LEDs. If you have a hot air station you can shrink it a bit to keep it from falling off when the front panel is removed, but as long as it stays in place they should as well. 

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Panel PCB             | Fabricate using Gerber files                                      |     1 | PCBWay
| D1-D6                 | 5mm LEDs, preferably frosted (not the bright clear ones)          |     6 |
| J1                    | Breakable right-angle pin header                                  |     1 |
| SW1-SW6               | 6x6x11mm momentary button                                         |     6 |
| Mounting ****         | Nylon M3 hex standoffs 8mm (M-F)                                  |     4 |
| Mounting ****         | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting ****         | Nylon M3x6mm nylon nuts                                           |     4 |

****) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 8mm and 20mm, as quite a lot of them will be used when building more than one module.