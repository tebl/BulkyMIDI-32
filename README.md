# BulkyMIDI-32
When I was young I'd heard rumours about a fantastical sound card for the computer known as the Roland MT-32 - imagining that if it was good enough to be the default sound device for games such as Monkey Island, then it had to be good! Of course I was a kid at the time, the kind that didn't even have enough money to even be allowed inside the kind of stores that would sell this stuff. Fast forward to adulthood and I learned that it wasn't a sound card at all - it was a standalone MIDI-module! The second thing I learned was that they originally were, and still are, incredibly expensive items. Especially for those of us who were born without any sense of rhythm.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2017.17.09.jpg)
[![YouTube image](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/youtube_clip_introduction.jpg)](https://youtu.be/-z2EQR_IaVU)

Cue other incredibly talented people found on the Internet, in particular for creating the [mt32-pi](https://github.com/dwhinham/mt32-pi) project - allowing people like myself to build a device capable of at least emulating one of these fantastical devices. All it takes is a somewhat cheap, mostly available Raspberry Pi 3 or 4. As with everything I enjoy playing around with, as long as it is simple enough for me to do so - I'll look into building my own version of it. Granted, I may have cheated more than a little bit by starting out with a copy of the design files for [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI) as my starting point.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_040.jpg)

I had a lot of fun building the original *BulkyMIDI-32*, my process can best be described as an exciting journey down a rabbit hole of all things MIDI including similarly themed audio projects. This resulted in a multitude of adapters built for connecting things together, including a whole host of interesting modules that can be either used with the *BulkyMIDI-32* - or - in many cases they can be also be used by themselves or alongside other vintage music equipment. In order to keep things separate I've split the modules-section so that you'd quickly be able to determine which PCB designs could belong together.

- [1> Modules](#1-modules)
  - [1.1> BulkyMIDI-32](#11-bulkymidi-32)
  - [1.2> BulkyMIDI-32 Audio Switch](#12-bulkymidi-32-audio-switch)
  - [1.3> BulkyMIDI-32 Channel Monitor](#13-bulkymidi-32-channel-monitor)
  - [1.4> BulkyMIDI-32 Channel Monitor 2](#14-bulkymidi-32-channel-monitor-2)
  - [1.5> BulkyMIDI-32 Dexed](#15-bulkymidi-32-dexed)
  - [1.6> BulkyMIDI-32 ExModule](#16-bulkymidi-32-exmodule)
  - [1.7> BulkyMIDI-32 Input Switch](#17-bulkymidi-32-input-switch)
  - [1.8> BulkyMIDI-32 Internal](#18-bulkymidi-32-internal)
  - [1.9> BulkyMIDI-32 Play](#19-bulkymidi-32-play)
  - [1.10> BulkyMIDI-32 Power Switch](#110-bulkymidi-32-power-switch)
  - [1.11> BulkyMIDI-32 VU SIDi](#111-bulkymidi-32-vu-sidi)
- [2> Adapters](#2-adapters)
- [3> Documentation](#3-documentation)
- [4> Acknowledgements](#4-acknowledgements)


# 1> Modules
For the technical details as well as information regarding the modules included by this specific github project, consult the table below. Follow the [documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation) links for build instructions, BOM and anything else you'd need for that specific module. Faceplates and any backplates listed are for the most most part only decorative, allowing you to put together something similar to a case without actually requiring a 3d-printer. Also, check out the [schematics](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation) for more information about the electronic side of things.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-07%2020.40.31.jpg)

As previously mentioned several modules has been designed as part of the same project, these add different functionality and due to their identical form factor - they can all be stacked to build your very own MIDI-mountain! Though they bear the *BulkyMIDI-32* name, they can all be used independently of the main [BulkyMIDI-32](#11-bulkymidi-32)-module - they will communicate using standard MIDI. Should you want to, they should be able to live happily alongside your vintage MIDI-devices.

| Module                            | Description                                      |
| --------------------------------- | ------------------------------------------------ | 
| [BulkyMIDI-32](#11-bulkymidi-32)  | Main *BulkyMIDI-32*-module (running *mt32-pi*).
| [BulkyMIDI-32 Audio Switch](#12-bulkymidi-32-audio-switch) | Module for switching between various audio sources, similar to the source selection switch on a stereo system.
| [BulkyMIDI-32 Channel Monitor](#13-bulkymidi-32-channel-monitor) | MIDI-channel activity monitor, lights up an LED corresponding to the channel on activity. Implemented using basic CMOS logic chips.
| [BulkyMIDI-32 Channel Monitor 2](#14-bulkymidi-32-channel-monitor-2) | Mainly the same as above, except that the hardware is implemented using an *Arduino Pro Micro* and is therefore a lot easier to obtain the parts for.
| [BulkyMIDI-32 Dexed](#15-bulkymidi-32-dexed) | A variant of *BulkyMIDI-32* that was intended for running [MiniDexed](https://github.com/probonopd/MiniDexed).
| [BulkyMIDI-32 ExModule](#16-bulkymidi-32-exmodule) | *BulkyMIDI-32*-styled module for connecting modern WaveTable-modules up to MIDI-devices.
| [BulkyMIDI-32 Input Switch](#16-bulkymidi-32-input-switch) | Module for switching between up to four MIDI sources, the selected input is then replicated to three different THRU-ports. This allows you to easily switch between equipment as well as chain together different systems.
| [BulkyMIDI-32 Internal](#18-bulkymidi-32-internal) | *BulkyMIDI-32* built for installing in a 3.5" PC drivebay.
| [BulkyMIDI-32 Play](#19-bulkymidi-32-play) | Used for playing MIDI-files (*.MID*) from an SD-card using an *Arduino Pro Micro*. The hardware can also be uses as a basis for building a custom MIDI-merger, MIDI-message filtering or simply as a *USB to MIDI*-adapter.
| [BulkyMIDI-32 Power Switch](#110-bulkymidi-32-power-switch) | *BulkyMIDI-32*-module for managing power to other *BulkyMIDI-32*-modules.
| [BulkyMIDI-32 VU SIDi](#111-bulkymidi-32-vu-sidi) | At the moment this is an LM3915-based VU-meter.


## 1.1> BulkyMIDI-32
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2017.17.09.jpg)
**Status:** Completed

This is the main attraction of this entire repository. If you came here looking to build an awesome looking mt32-pi, then this is at least one of them. You're given the option of picking the cheaper route by only building up a basic module, that's the main PCB and nothing else. Alternatively, and this is the part that makes it awesome, you can build the whole thing as shown above. Given the really low cost of PCB fabrication on this side of the widely advertised oncoming apocalypse, I recommend that you build a complete unit. The list below will include alternate versions of some boards, so you need to decide which of them you want or need based on their description.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Module/README.md#3-bom), [Setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md), [Getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_35d2ed18.html)
| [BulkyMIDI-32 Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel) | Recommended | Adds a vertical surface for mounting switches and rotary encoder. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Panel_17b7fa7c.html)
| [BulkyMIDI-32 Front panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) | Optional | Decorative front panel, mounts on [BulkyMIDI-32 Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel). Designed for use with [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Faceplate_FP1_92a2878f.html)
| [BulkyMIDI-32 Front panel (FP2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP2) | Recommended | Decorative front panel, mounts on [BulkyMIDI-32 Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel) | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Faceplate_FP2_946cc4c8.html)
| [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras) | Optional | Adds passive audio mixing, RS-232 connectivity and RS-232 baud rate translation. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Extras_9be44f98.html)
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.2> BulkyMIDI-32 Audio Switch
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_041.jpg)
**Status:** Completed

One of the drawbacks to using a vintage boombox as my main stereo speaker system in my workshop, is that only has a single audio input - meaning that I would normally have to switch around cables all the time. Ordinarily I shouldn't complain as much about that, as not everyone is lucky enough to have an input - at all! This doesn't solve the problem of not having any, but you do get the option of turning a single input into as many as you'd like with this Audio Switch. If you need more than six, build more than one!

To select the one you want, just push a button and almost instantly you'll hear an exciting click from the corresponding relay. Did I need a relay for this? Probably not. I just like using relays from time to time.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Audio Switch](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Audio%20Switch/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Audio_Switch_118316c8.html)
| [Audio Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel) | Optional | Adds a vertical surface installing switches as well as adding channel indicator LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Audio%20Switch%20Panel/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Audio_Switch_Panel_a10b5ecb.html)
| [Audio Switch Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Audio%20Switch%20FP1) | Optional | Decorative front panel, mounts on [Audio Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Audio%20Switch%20FP1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Audio_Switch_Faceplate_FP1_fc2b542a.html)
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.3> BulkyMIDI-32 Channel Monitor
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.26.40.jpg)
**Status:** Working, but documentation is missing.

One of the first things I wanted to add to the *BulkyMIDI-32* was more blinking lights, as it turns out there were devices back in the day that did this - the were called channel monitors. Their purpose is simply to have an LED for each of the 16 MIDI channels, then as a MIDI-message passes through that contains channel information - the corresponding LED is lit up and will stay on for some time.

The circuit design was based on an article by W. Dunczewski, titled *MIDI Channel Monitor* and was printed in the 1993 october issue of Elektor Electronics. Besides the obvious attraction to blinking lights in controlled forms, what I liked about it is that everything is implemented entirely in basic CMOS logic chips (there's no traditional CPU or MCU handling the data).

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Channel Monitor](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel/README.md#3-bom) | PCBWay
| [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel) | Optional | Adds a vertical surface for mounting the 16 channel LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel20Panel/README.md#3-bom) | PCBWay
| [Channel Monitor Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | Optional | Decorative front panel, mounts on [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.4> BulkyMIDI-32 Channel Monitor 2
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.57.07.jpg)
**Status:** Working, but documentation is missing.

This module displays MIDI-channel activity in realtime, with an LED for each of the 16 channels. While it effectively does the same as the [BulkyMIDI-32 Channel Monitor](#13-bulkymidi-32-channel-monitor), I also wanted to build a version that could be put together using parts that aren't quite as *vintage* as the parts required by that module.

In the end, the core of the module was implemented using an Arduino Pro Micro in combination with a couple of shift registers. In theory the board can be built up as a simple *USB-to-MIDI* converter, or it can be used to have the MCU process MIDI-messages - note that Arduino *sketches* to do any of this do not exist. 

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Channel Monitor 2](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%202) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%202), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel%202/README.md#3-bom) | PCBWay
| [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel) | Optional | Adds a vertical surface for mounting the 16 channel LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel20Panel/README.md#3-bom) | PCBWay
| [Channel Monitor Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | Optional | Decorative front panel, mounts on [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.5> BulkyMIDI-32 Dexed
![BulkyMIDI-32 Dexed](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_dexed_041.jpg)
**Status:** Untested prototype

A variant of *BulkyMIDI-32* that was intended for running [MiniDexed](https://github.com/probonopd/MiniDexed), a software that is similar to *MT32-PI* - except that it instead emulates up to eight Yamaha DX7 synthesizers on mostly the same hardware. I built one up and played around with it, my conclusion afterwards is that while it *may* work - I have absolutely no idea of how to use it. Or even a real keyboard for that matter. So in case someone finds it interesting enough to build one up using the files provided, please tell me whether it actually works. 


## 1.6> BulkyMIDI-32 ExModule
![BulkyMIDI-32 ExModule](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_exmodule_041.jpg)
**Status:** Completed

There was a time when PC soundcards, mostly ISA, came with a *WaveTable*-header for attaching *WaveTable*-modules directly onto it it. Originally devised for mounting a separate *WaveBlaster*-module onto a *Creative Soundblaster 16*, but most often they're just referred to as *WaveTable*-headers as the form factor was inevitably adopted by several other companies who made similar modules with their own chipsets on it.

Ordering a selection of more modern modules from [serdashop.com](https://www.serdashop.com/) for installing into one of my vintage PCs, I couldn't decide on which one to put where - until I finally decided and realized that my AWE32 doesn't even have that feature. So for a year or so they've lived in the box the came in, buy in the end I figured it was time to do something with them. So I started building something to use them externally instead - following the guide up on [atari.joska.no](https://atari.joska.no/db50xg/), itself referencing an article printed in Elektor Electronics (july/august 1997), I ended up with the *BulkyMIDI-32 ExModule*. Plug a MIDI-cable into it, hook the audio output up to your amplifier and enjoy!

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [ExModule](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20ExModule/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_6564c365.html)
| [ExModule Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel) | Optional | Adds a vertical surface installing switches as well as adding channel indicator LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20ExModule%20Panel/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_Panel_8050038f.html)
| [ExModule Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20ExModule%20FP1) | Optional | Decorative front panel, mounts on [ExModule Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20ExModule%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20ExModule%20FP1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_ExModule_Faceplate_FP1_640ef0bc.html)
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.7> BulkyMIDI-32 Input Switch
![BulkyMIDI-32 Input](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_input_041.jpg)
**Status:** Completed

This module was created in order to easily switch between different MIDI inputs, the selected input is then replicated to three different THRU-ports. What this allows me to do on the input-side is to select between a keyboard, a USB MIDI-interfaces connected to a modern system and that of a  vintage computer system. Duplicating the MIDI-messages on different THRU-ports allow me to send the same data to several MIDI-devices, such as an original *Roland MT-32* as well as a *MT32-PI* (such as the BulkyMIDI-32 itself). 

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Input Switch](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Audio%20Switch/README.md#3-bom) | PCBWay
| [Input Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch%20Panel) | Optional | Adds a vertical surface installing switches as well as adding indicator LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Input%20Switch%20Panel/README.md#3-bom) | PCBWay
| [Input Switch Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Input%20Switch%20FP1) | Optional | Decorative front panel, mounts on [Input Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Input%20Switch%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Input%20Switch%20FP1) | PCBWay
| [Input Switch Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Input%20Switch%20FB2) | Optional | Faceplate that goes on top of the device, similar to the two below - except it's missing a hole. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Input%20Switch%20FB2) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.8> BulkyMIDI-32 Internal
![BulkyMIDI-32 Internal](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2024-03-22%2002.00.42.jpg)
**Status:** Working prototype

In many ways this is the module that this whole thing has been building towards, a 3.5" drive bay expansion for vintage PCs. Might fit into more equipment than this, but mainly just the blocky beige thing that you remember from your childhood (usually next to a CRT). Is this a sane thing to build without any kind of working 3d-printer available? No, it probably isn't. Did I build it anyway? Yes, and you're looking at the only finished version of it. Is it actually finished? No. Probably needs a bit of tweaking and the documentation to go with it.


## 1.9> BulkyMIDI-32 Play
![BulkyMIDI-32 Play](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.22.50.jpg)
**Status:** Completed

In many ways the missing module when it comes to playing around with a Roland MT-32, both the vintage kind as well as the emulated version that is the main *BulkyMIDI-32* module (running *mt32-pi*) - simply playing back a *.MID*-file without a computer attached to it. Implemented with an Arduino Pro Micro at its heart, you can put your files on an SD-card and play them back - use a long press when starting playback to loop the file, another long press to stop playback. During playback the rotary encoder encoder can be used to speed up or slow down the tempo.

Given that the designs have provisions for more than the expected number of MIDI-ports, a change in firmware can allow the hardware design to be used for entirely different purposes such as MIDI-message filtering, merging inputs and similar functionality.  

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Play](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Play/README.md#3-bom) | PCBWay
| [Play Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel) | Optional | Adds a vertical surface for oled-display and rotary encoder. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel/README.md#3-bom) | PCBWay
| [Play Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Play%20FP1) | Optional | Decorative front panel, mounts on [Play Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Play%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Faceplate that goes on top of the device | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)


## 1.10> BulkyMIDI-32 Power Switch
**Status:** Working, but last revision has not been tested.

Looking at this repository and the various devices contained within it, you'll soon get the impression that no man could possibly own that many 5v power supplies with that exact barrel plug already on it (2.1mm x 5.5mm barrel connector). I don't. I own exactly two, so that's one for the main BulkyMIDI-32 and one for everything else. So I got the idea that I would make something like the Audio Switch or Input Switch, except with power! And because I wanted a push to turn on, but really wanted a hold to turn off - I added an Arduino to the board. And some more relays. Because relays are cool, and a lot easier to understand for someone like me. You feed it power, then the other power connectors are hooked up to your other devices. In order to do so, you use a cable with a male plug on both ends (AliExpress has them listed as *DC male to male CCTV adapter connector cords*).

The design has provisions for using the first channel as a source for power, possibly with a different polarity. This is done by opting not to install the corresponding relay for the first channel, and changing out some of the wire links. Only reason I'm mentioning it in the first place is that music equipment traditionally use the same type of plug, but at a completely different voltage and polarity from what all of my *BulkyMIDI-32*-modules work with. If you mess up your cabling at some point, then there should be expectations of of smoke and tears, but it's nice to know that it's there as an option. If you know what you're doing.


## 1.11> BulkyMIDI-32 VU SIDi
![BulkyMIDI-32 VU SIDi](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_vu_sidi_041.jpg)
**Status:** Prototype, with issues to work out

This is a module that I'll probably have to rethink properly, mostly because of attempting to integrate a little too much in one go without a proper understanding of either of them. The first part of it is a VU-meter based on the LM3915 chip which isn't a solution I particularly enjoyed using, at least in part due to one of the two modes supported by the chip doesn't really work properly when powered from 5v. The other mode is too flickery for my comfort.

The *SIDi*-part of it was based directly on github-project [SIDI](https://github.com/doctea/SIDI) by user *doctea*, and I can't figure out how to get it to work. This probably isn't a problem with the code, but more my lack of understanding how to work with a music chip directly. I'm not a musician or even know how to play any sort of instrument, so it is a case of biting off more than I can chew - at least for the forseeable future.


# 2> Adapters
Separate from the main modules are several adapters, designed for use with the *BulkyMIDI-32* in particular though most of them simply speak standard MIDI - so they should work with original equipment such as the original *Roland MT-32*. Follow the included in the table below for details such as build instructions, BOM and anything else you'd need for that specific module. The repository also includes a folder for [schematics](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic/adapters) in PDF-format, these will be needed in order to track down any faults you encounter when building up and testing the adapters.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Amiga MIDI Interface (DB25)](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga) | Optional | RS-232 to MIDI adapter for Amiga 500/600/1200/2000/3000/4000. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/Amiga_MIDI_Interface_DB25_ee22ba2d.html)
| [Amiga MIDI Interface (IDC)](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC) | Optional | RS-232 to MIDI adapter for Amiga 500/600/1200/2000/3000/4000. Use with IDC to DB25 cable. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/Amiga_MIDI_Interface_IDC_81756c6e.html)
| [Evolution Mk-7 Adapter](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Mk7%20Adapter) | Optional | The Evolution Mk-7 MIDI keyboard only came with a DB15-connector as its only output, intended for plugging into a soundcard. This adapts that to regular 5-pin DIN-sockets. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Mk7%20Adapter), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/adapters/BulkyMIDI-32%20Mk7%20Adapter/README.md#3-bom) | PCBWay
| [Gameport (DB15)](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport) | Optional | Adapter for plugging a MIDI-cable directly into the gameport on several common sound cards. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/adapters/BulkyMIDI-32%20Gameport/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/Gameport_MIDI_Interface_DB15_832b357e.html)
| [Gameport (IDC)](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport%20IDC) | Optional | Adapter for plugging a MIDI-cable into the gameport on common sound cards. Use with IDC-cable to a male DB15-connector, may be easier to use with several older computer case designs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport%20IDC), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/adapters/BulkyMIDI-32%20Gameport%20IDC/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/Gameport_MIDI_Interface_IDC_28745157.html)
| [MIDI Breakout Board](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/MIDI%20Breakout%20Board) | Optional | Handy breakout board for when you want to add MIDI-ports to an Arduino-board. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/MIDI%20Breakout%20Board), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/adapters/MIDI%20Breakout%20Board/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/MIDI_Breakout_Board_c80f702b.html)
| [MIDI TRS Adapter](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20TRS%20MIDI) | Optional | TRS to MIDI adapter, has jumpers to select between TRS *A*- or *B*-wiring. Use with standard 3.5mm TRS-cable, as is commonly used for stereo audio. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20TRS%20MIDI), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/adapters/BulkyMIDI-32%20TRS%20MIDI/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/MIDI_to_TRS_Adapter_fb57ed94.html)

**NB!** The repository may contain pieces of modules and adapters designed for use with these, if they're not listed in one of these tables then they're a work in progress. They might be functional, they might blow up or I simply haven't remembered to update the documentation for them yet. PCBWay order links will always point you towards the last know good revision that I've tested, meaning they worked at least once with the equipment I have available to me.


# 3> Documentation
I had a lot of fun building what most would consider *THE* *BulkyMIDI-32*, or the "original" *BulkyMIDI-32* as I've probably also referred to it as. Frequently during the process of building it, I kept tumbling further and further down a rabbit hole of all manner of things that in some way communicate over MIDI. This has resulted in a multitude of devices, adapters and straight up abominations of technology that simply can't be described in a single coherent set of documents - therefore you'll need to consult the documentation that comes as part of each [module](#1-modules) or [adapter](#2-adapters) separately. Follow the links from there.

That's probably not as specific as you initially may have wanted this section to be, so here are some of the things you were *probably* looking for instead:
- [How to build a BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module)
  - [Video: Introduction to MT32-PI](https://youtu.be/-z2EQR_IaVU)
  - [Video: How to build a BulkyMIDI-32](https://youtu.be/nyAeKCTkv0M)
- [How to set up a BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md)
  - [Video: Setting up a BulkyMIDI-32](https://youtu.be/7vWQ5zV8XT0)
- [How to get started using a BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md)
- [Schematics](https://github.com/tebl/BulkyMIDI-32/tree/main/documentation/schematic)


# 4> Acknowledgements
Everything comes from something, in particular when it comes to most of my electronics projects. I mainly build things I would like to own, often doing a respin to fit my own particular style and preferences with most of the hardest parts of the designs already provided by people more knowledgeable than I could ever hope to be.

The software running on the Raspberry Pi was provided by [mt32-pi](https://github.com/dwhinham/mt32-pi) while the original hardware itself can be considered to be based on the information provided by the associated wiki. Excited to get a running start on actually using it, I started out with the design files for [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI) then kept beavering away until it started working and looking the way I wanted it to. It is my sincerest hope that I added something of substance in the process of all this, but in the end it was just so that I could have one for myself. The design files are here in case anyone wants one too.