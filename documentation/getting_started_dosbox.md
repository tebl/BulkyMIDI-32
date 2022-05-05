# 1> Introduction
This documentation deals with how to get started with a specific system or program related to the use of the *BulkyMIDI-32*, but will in many cases also be relevant for use with a real *Roland MT-32* as well. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) as some relevant terms may have been defined earlier.

- [1> Introduction](#1-introduction)
- [2> DOSBox](#2-dosbox)
  - [2.1> Example game](#21-example-game)
  - [2.2> MT32-PI Control](#22-mt32-pi-control)

# 2> DOSBox
[DOSBox](https://www.dosbox.com/) is another alternative for emulating IBM PC games on your modern computer, just download the relevant version for your operating system and install it. Compared to [ScummVM](#2-scummvm) it's quite a different beast altogether, allowing you to emulate a mostly compatible version of the classic DOS environment - meaning that most of the warts are still included. The emulator has a lot of options available for tailoring it exactly to fit your specific requirements, but everything beyond the basics on how to get it working with a real MT-32 or the MT32-PI will be left up to you to figure out.

However, the first task that we'll need to accomplish is to add a directory on your modern computer that will serve as the C: drive from within *DOSBox*. This is done by editing the configuration-file, when using MS Windows you'll find that a shortcut to editing the configuration has already been added to your start menu. The format of the file is similar to the *INI*-files of the days before MS Windows 95 became a thing, every configuration option is placed into a section with the section name listed in brackets. The options I've included are just so that you can navigate to the expected sections, meaning it's not a complete configuration by itself so you'll need to insert the values into the existing configuration. At the bottom you'll find this section, here I'm just assigning the part *D:\DOSBOX* from my modern computer to serve as the C-drive.

```
[autoexec]
mount C D:\DOSBOX
C:
```

The next step is starting up DOSBox with the *USB MIDI Interface* already plugged in. In order to complete the configuration we'll need to figure out the logical ID number that your operating system should already have assigned to your device.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_001.png)
```
MIXER /LISTMIDI
```
The command listed should give you a listing of all recognized MIDI devices, the number listed at the start will be the one we're looking for. My device is a *Roland UM-ONE* and it was detected as device 1, therefore I'll be updating the same configuration file we edited earlier to reflect this.
```
[midi]
midiconfig=1
```

From this point on, we'll need to configure the game or application that we want to use so that it knows what it should look for - this varies from game to game, but usually there's a setup or install utility that takes care of this for you.

## 2.1> Example game
As already mentioned, DOSBox allows you to run DOS on modern computer with all the features and hurdles that entails. As we're emulating a DOS-based computer instead of emulating a game-engine, we need to configure it using the applications included with that specific version of it. Believing that examples make everything better, I've chosen to use the **VGA**-version of *Leisure Suit Larry* as that very example.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_010.png)

I've already placed the files belonging to the game in the folder *D:\DOSBOX\Games\LSL1*, remembering that this is part of the folder that will be mounted as your C-drive within *DOSBox* (depending on your organizational ability or operating system, change to match). Starting up *DOSBox*, navigate to the folder and run the install utility as mentioned in the manual included with your original copy of the game.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_011.png)

Move up to the entry specifying the device used for *Music*, hit enter and select the option for *"Roland MT-32, MT-100, LAPC-I, CM-32L, or CM-64"*. When satisfied, just *"Accept these choices and save configuration"* and we'll be ready to start playing the game. With that done you should be ready to start the game, just run *"LSL1VGA.BAT"* to start it up.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_012.png)
```
LSL1VGA.BAT
```
![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_013.png)

Other games will normally have its own way of presenting and updating these settings, so it may take some trial and error to find the one that works for you. For the most part, the worst thing that'll happen is that audio don't work or the game refuses to start. Just go through the process again and try something else.

## 2.2> MT32-PI Control
The MT32-PI has extended support for interpreting a selection of MIDI instructions not normally understood by the real Roland MT-32, these can be sent using simple DOS commands to the device in order to control the extra features that it brings to the table. This is provided as a separate project named [mt32-pi-control](https://github.com/gmcn42/mt32-pi-control), it is installed simply by downloading and extracting the DOS version of the [latest release](https://github.com/gmcn42/mt32-pi-control/releases).

I've already placed the files belonging to the game in the folder *D:\DOSBOX\MT32-PI*, remembering that this is part of the folder that will be mounted as your C-drive within *DOSBox* (depending on your organizational ability or operating system, change to match). You can test that it is working by telling to put some text on the screen.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_020.png)
```
MT32-PI.EXE -v -t "This is an example"
```

This is a very simple example, but the main purpose is of it is that by using the utility you can have the MT32-PI switch to the correct mode and relevant settings before the application is started. All of this can be put into a simple batch file, or you can add the commands to the *"autoexec"*-section of the DOSBox so that everything is set up as expected every time without manually clicking around on the front panel of the device.