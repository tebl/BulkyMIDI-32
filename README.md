# BulkyMIDI-32
When I was young I'd heard rumours about a fantastical sound card for the computer known as the Roland MT-32 - imagining that if it was good enough to be the default sound device for games such as Monkey Island, then it had to be good! Of course I was a kid at the time, the kind that didn't even have enough money to even be allowed inside the kind of stores that would sell this stuff. Fast forward to adulthood and I learned that it wasn't a sound card at all - it was a standalone MIDI-module! The second thing I learned was that they were, and still are incredibly expensive items for people born without a sense of rhythm.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-03-04%2001.10.07.jpg)

Cue the other incredibly talented people on the Internet, in particular for creating the [mt32-pi](https://github.com/dwhinham/mt32-pi) project - allowing you to build a device capable of emulating one of these fantastical devices on a somewhat cheap and somewhat available Raspberry Pi. The next step that happened is that I used their documentation to build a version of the device for myself, but better people have already done that - I based my project files directly on [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI). I can't say I added much to the basic design, I just made it into something that matches my own particular style.

In order to compare it to the real thing, I needed to buy one for comparison. Which I did - and they both sound excellent. At this point the project got expanded into adding adapters and features that should make it easier to use the real device with vintage computers, but most of them will work the same with the BulkyMIDI-32 though for the latter there may be easier ways of doing so.

- [BulkyMIDI-32](#bulkymidi-32)
  - [1.1> Modules](#11-modules)
  - [1.2> Acknowledgements](#12-acknowledgements)

## 1.1> Modules
For the technical details as well as information regarding the modules included by this specific github project, consult the table below. Follow the [documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation) links for build instructions, BOM and anything else you'd for that specific module. Faceplates and any backplates listed are for the most most part only decorative, allowing you to put together something similar to a case without actually requiring a 3d-printer. Also, check out the [schematics](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation) for more information about the electronic side of things.

| Module                 | Required    | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------- |
| [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module) | Yes | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module), [Setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md), [Getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_35d2ed18.html)
| [BulkyMIDI-32 Faceplate (FA1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA1) | Optional | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FA1_22c4404e.html)
| [BulkyMIDI-32 Faceplate (FA2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA2) | Optional | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FA2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FA2_dcbe5f40.html)
| [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras) | Recommended | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras) | https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Extras_9be44f98.html

Additionally there are a few miscellaneous boards, these were designed for use with the BulkyMIDI-32 or a real Roland MT-32 - check out the documentation links when figuring out which of these you'd be able to find a use for.

| Module                 | Required    | Note                               | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Vertical Rotary Encoder](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/Vertical%20Rotary%20Encoder) | Recommended | For use with *extras* board | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/Vertical%20Rotary%20Encoder) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Vertical_Rotary_Encoder_352faf4d.html)

**NB!** The repository may contain pieces of modules and adapters designed for use with these, if they're not listed in one of these tables then they're a work in progress. They might be functional, they might blow up or I simply haven't found the time to write the documentation for them. PCBWay order links will always point you towards the last know good revision that I've tested, meaning they worked at least once.

## 1.2> Acknowledgements
Everything comes from something, in particular when it comes to most of my electronics projects. I mainly build things I would like to own, often doing a respin to fit my own particular style and preferences with most of the hardest parts of the designs already provided by people more knowledgable than I. The software running on the Raspberry Pi is provided by the [mt32-pi](https://github.com/dwhinham/mt32-pi) while the hardware itself being based on the information provided by the associated wiki, [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI) also serving as a starting point for the design itself.