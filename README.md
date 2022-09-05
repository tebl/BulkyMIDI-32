# BulkyMIDI-32
When I was young I'd heard rumours about a fantastical sound card for the computer known as the Roland MT-32 - imagining that if it was good enough to be the default sound device for games such as Monkey Island, then it had to be good! Of course I was a kid at the time, the kind that didn't even have enough money to even be allowed inside the kind of stores that would sell this stuff. Fast forward to adulthood and I learned that it wasn't a sound card at all - it was a standalone MIDI-module! The second thing I learned was that they originally were, and still are, incredibly expensive items. Especially for people born without any sense of rhythm.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2017.17.09.jpg)

Cue other incredibly talented people found on the Internet, in particular for creating the [mt32-pi](https://github.com/dwhinham/mt32-pi) project - allowing people like myself to build a device capable of at least emulating one of these fantastical devices. All it takes is a somewhat cheap, mostly available Raspberry Pi 3 or 4. As with everything I enjoy playing around with, as long as it is simple enough for me to do so - I'll look into building my own version of it. Granted, I may have cheated more than a little bit by starting out with a copy of the design files for [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI) as my starting point.

![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_040.jpg)

I had a lot of fun building the original *BulkyMIDI-32*, the process can best be described as an exciting journey down a rabbit hole of all things MIDI and similarly themed audio projects. This resulted in a multitude of adapters built for connecting things together, including a whole host of interesting modules that can be either used with the *BulkyMIDI-32* or in many cases can be used by themselves alongside other music equipment. To keep things separate I've split the modules-section so that you'd be able to determine which PCB designs belong together.

- [1> Modules](#1-modules)
  - [1.1> BulkyMIDI-32](#11-bulkymidi-32)
  - [1.2> BulkyMIDI-32 Audio Switch](#12-bulkymidi-32-audio-switch)
  - [1.3> BulkyMIDI-32 Channel Monitor](#13-bulkymidi-32-channel-monitor)
  - [1.4> BulkyMIDI-32 Channel Monitor 2](#14-bulkymidi-32-channel-monitor-2)
  - [1.5> BulkyMIDI-32 Play](#15-bulkymidi-32-play)
- [2> Adapters](#2-adapters)
- [3> Acknowledgements](#3-acknowledgements)


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
| [BulkyMIDI-32 Play](#15-bulkymidi-32-play) | Used for playing MIDI-files (*.MID*) from an SD-card using an *Arduino Pro Micro*. The hardware can also be uses as a basis for building a custom MIDI-merger, MIDI-message filtering or simply as a *USB to MIDI*-adapter.

## 1.1> BulkyMIDI-32
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2017.17.09.jpg)

This is the main module of the project, if you came here looking to build an mt32-pi device then this is it. You have the option of going the cheaper route of just building the basic module, consisting only of the main module and nothing else. Alternatively, you can just build the whole thing as shown above. Given the cost of PCB fabrication, I recommend just building a complete unit. Note that the list below will include alternate versions of boards, so you need to decide which of them you'll need based on their description.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Module/README.md#3-bom), [Setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md), [Getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_35d2ed18.html)
| [BulkyMIDI-32 Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel) | Optional | Adds a vertical surface for mounting switches and rotary encoder. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Panel_17b7fa7c.html)
| [BulkyMIDI-32 Front panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) | Optional | Decorative front panel, mounts on [BulkyMIDI-32 Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module%20Panel). Designed for use with [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Module%20FP1) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Module_Faceplate_FP1_92a2878f.html)
| [BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras) | Recommended | Adds passive audio mixing, RS-232 connectivity and RS-232 baud rate translation. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras/README.md#3-bom) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Extras_9be44f98.html)
| [BulkyMIDI-32 Faceplate (FB1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | Optional | Faceplate that goes on top of the device, with simple logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Alternate faceplate that goes on top of the device, with different logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyMIDI_32_Faceplate_FB2_c07272e8.html)
| [BulkyMIDI-32 Faceplate (BA1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20BA1) | Optional | When stacking multiple modules, this replaces the top plate of the module below it as the dual setup for RS-232 may get in the way (alternatively, just increase the spacing). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20BA1) | PCBWay

## 1.2> BulkyMIDI-32 Audio Switch
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_audio_switch_041.jpg)

One of the drawbacks to using a vintage boombox as my stereo speaker system, is that it doesn't have any more than one audio input meaning that I would normally have to switch around the cables all the time. Well I can't really complain as not everyone is lucky enough to even have an input, at all! However, since I have one I wanted something that would let me switch between at the touch of a button. So, I built a simple audio switch and now you can build one as well! 

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Audio Switch](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Audio%20Switch/README.md#3-bom) | PCBWay
| [Audio Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel) | Optional | Adds a vertical surface installing switches as well as adding channel indicator LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Audio%20Switch%20Panel/README.md#3-bom) | PCBWay
| [Audio Switch Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Audio%20Switch%20FP1) | Optional | Decorative front panel, mounts on [Audio Switch Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Audio%20Switch%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Audio%20Switch%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | Optional | Faceplate that goes on top of the device, with simple logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Alternate faceplate that goes on top of the device, with different logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | PCBWay

## 1.3> BulkyMIDI-32 Channel Monitor
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.26.40.jpg)

One of the first things I wanted to add to the *BulkyMIDI-32* was more blinking lights, as it turns out there were devices back in the day that did this - the were called channel monitors. Their purpose is simply to have an LED for each of the 16 MIDI channels, then as a MIDI-message passes through that contains channel information - the corresponding LED is lit up and will stay on for some time.

The circuit design was based on an article by W. Dunczewski, titled *MIDI Channel Monitor* and was printed in the 1993 october issue of Elektor Electronics. Besides the obvious attraction to blinking lights in controlled forms, what I liked about it is that everything is implemented entirely in basic CMOS logic chips (there's no traditional CPU or MCU handling the data).

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Channel Monitor](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel/README.md#3-bom) | PCBWay
| [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel) | Optional | Adds a vertical surface for mounting the 16 channel LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel20Panel/README.md#3-bom) | PCBWay
| [Channel Monitor Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | Optional | Decorative front panel, mounts on [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | Optional | Faceplate that goes on top of the device, with simple logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Alternate faceplate that goes on top of the device, with different logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | PCBWay

## 1.4> BulkyMIDI-32 Channel Monitor 2
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.57.07.jpg)

This module displays MIDI-channel activity in realtime, with an LED for each of the 16 channels. While it effectively does the same as the [BulkyMIDI-32 Channel Monitor](#13-bulkymidi-32-channel-monitor), I also wanted to build a modern version of it using an Arduino Pro Micro and a couple of shift registers as well. Mostly an easy task, having implemented the hardware changes and writing the firmware for it while waiting for the missing ICs for the first one to arrive on the slow boat from China.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Channel Monitor 2](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%202) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%202), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel%202/README.md#3-bom) | PCBWay
| [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel) | Optional | Adds a vertical surface for mounting the 16 channel LEDs. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Channel20Panel/README.md#3-bom) | PCBWay
| [Channel Monitor Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | Optional | Decorative front panel, mounts on [Channel Monitor Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Channel%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Channel%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | Optional | Faceplate that goes on top of the device, with simple logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Alternate faceplate that goes on top of the device, with different logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | PCBWay

## 1.5> BulkyMIDI-32 Play
![BulkyMIDI-32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-03%2018.22.50.jpg)

In many ways the missing module when it comes to playing around with a Roland MT-32, both the vintage kind as well as the emulated version that is the main *BulkyMIDI-32* module (running *mt32-pi*) - simply playing back a *.MID*-file without a computer attached to it. Implemented with an Arduino Pro Micro at its heart, you can put your files on an SD-card and play them back - use a long press when starting playback to loop the file, another long press to stop playback. During playback the rotary encoder encoder can be used to speed up or slow down the tempo.

Given that the designs have provisions for more than the expected number of MIDI-ports, a change in firmware can allow the hardware design to be used for entirely different purposes such as MIDI-message filtering, merging inputs and similar functionality.  

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Play](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play), [BOM](https://github.com/tebl/BulkyMIDI-32/blob/main/BulkyMIDI-32%20Play/README.md#3-bom) | PCBWay
| [Play Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel) | Optional | Adds a vertical surface for oled-display and rotary encoder. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel), [BOM](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel/README.md#3-bom) | PCBWay
| [Play Front Panel (FP1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Play%20FP1) | Optional | Decorative front panel, mounts on [Play Panel](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Play%20Panel). | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20Play%20FP1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB1)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | Optional | Faceplate that goes on top of the device, with simple logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB1) | PCBWay
| [BulkyMIDI-32 Faceplate (FB2)](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | Optional | Alternate faceplate that goes on top of the device, with different logo. | [Documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/faceplates/BulkyMIDI-32%20FB2) | PCBWay


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

**NB!** The repository may contain pieces of modules and adapters designed for use with these, if they're not listed in one of these tables then they're a work in progress. They might be functional, they might blow up or I simply haven't remembered to update the documentation for them yet. PCBWay order links will always point you towards the last know good revision that I've tested, meaning they worked at least once with the equipment I have available.


# 3> Acknowledgements
Everything comes from something, in particular when it comes to most of my electronics projects. I mainly build things I would like to own, often doing a respin to fit my own particular style and preferences with most of the hardest parts of the designs already provided by people more knowledgable than I.

The software running on the Raspberry Pi is provided by the [mt32-pi](https://github.com/dwhinham/mt32-pi) while the hardware itself can be considered to be based on the information provided by the associated wiki. As already mentioned I started out with the design files for [clymsyMIDI](https://github.com/gmcn42/clumsyMIDI) as a starting point for the design.