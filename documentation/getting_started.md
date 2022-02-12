# 1> Getting started
The [documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module#bulkymidi-32-module) that comes with the main module mostly only deals with soldering the device together, additionally there's a separate document on [setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_up.md) and ensuring that the device functions as expected. This document therefore assumes that you already have a working device, either because you took great care in constructing it yourself or you simply bought it from a builder that you decided to trust with a meager portion of your disposable income.

Before starting on this adventure, even with a ready-built unit I suggest at least reading through the [basic information](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_up.md#11-basic-information) section of previously mentioned document - if only so that any weird nomenclature found later on it the document becomes a bit less fuzzy. This is by no meant to be an exhaustive source of information for all things MT-32 or MT32-PI, the purpose is simply to provide some form of a starting point for those of us who've always wanted a Roland MT-32 without really knowing how it is supposed to be used.

- [1> Getting started](#1-getting-started)
- [2> ScummVM](#2-scummvm)
- [2> DOSBox](#3-dosbox)
  - [3.1> Example game](#31-example-game)
  - [3.2> MT32-PI Control](#32-mt32-pi-control)

# 2> ScummVM
[ScummVM](https://www.scummvm.org/) is by far the easiest way to get started, and while it provides its own form of MT-32 emulation we can reconfigure it to output the MIDI instructions out to external devices instead by the use of a suitable *USB MIDI Interface* (the one I recommend is *Roland UM-ONE Mk2*). I'm not entirely convinced that there's all that much to be gained from swapping out one form of emulation over another, but the exact same instructions can be used to hook up a real MT-32 to ScummVM and for that reason it is an excellent way of testing that the MT32-PI functions as expected.

[Download](https://www.scummvm.org/downloads/#release) and install the software for your favourite platform, but note that unless that's MS Windows you might have to navigate menus that might be different from those shown (I can't afford the laptop I already have, so those are the limitations to what I can show you). Several games have been made freeware, for that reason I'm recommending that you download a copy of *Beneath a steel sky* from the [ScummVM Games](https://www.scummvm.org/games/#games-sky) page - preferably the CD-version. Extract the Zip-file somewhere you'll be able to find later, then add it to ScummVM using the *"Add Game..."* button. That should add the game to your list of games, but while you could start it up at this point just to see what the original version of the game would sound like.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/scummvm_mt32_001.png)

In order to make ScummVM work with an external MIDI module, we'll need to change the options to match by clicking the button simply marked *"Options..."*. Our first stop is the *MT-32*-tab, here you'll need to select any of *USB MIDI Interface* that were plugged in **when** you started the program. Enable *True Roland MT-32* to indicate that the device connected on the other end is either a real Roland MT-32 or the MT32-PI.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/scummvm_mt32_002.png)

Second is the *Audio*-tab, here we need to select the same external interface as your *Preferred device*. Some games, in particular some of the Sierra games will attempt to use the MT-32 for both music as well as sound effects, but this varies from title to title with most of the later games preferring a regular sound card for effects. Note that most of the games will have an animated intro sequence only using standard sound card, but the music will start to play either in the menu or once you're into the game. The MT32-PI allows you to switch between various *romsets* in *MT32*-mode by using the *ROM*-button, for the games that utilize the MT-32 for sound effects you'll usually get more authentic audio using the earliest version. 

# 3> DOSBox
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

## 3.1> Example game
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

## 3.2> MT32-PI Control
The MT32-PI has extended support for interpreting a selection of MIDI instructions not normally understood by the real Roland MT-32, these can be sent using simple DOS commands to the device in order to control the extra features that it brings to the table. This is provided as a separate project named [mt32-pi-control](https://github.com/gmcn42/mt32-pi-control), it is installed simply by downloading and extracting the DOS version of the [latest release](https://github.com/gmcn42/mt32-pi-control/releases).

I've already placed the files belonging to the game in the folder *D:\DOSBOX\MT32-PI*, remembering that this is part of the folder that will be mounted as your C-drive within *DOSBox* (depending on your organizational ability or operating system, change to match). You can test that it is working by telling to put some text on the screen.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_020.png)
```
MT32-PI.EXE -v -t "This is an example"
```

This is a very simple example, but the main purpose is of it is that by using the utility you can have the MT32-PI switch to the correct mode and relevant settings before the application is started. All of this can be put into a simple batch file, or you can add the commands to the *"autoexec"*-section of the DOSBox so that everything is set up as expected every time without manually clicking around on the front panel of the device.