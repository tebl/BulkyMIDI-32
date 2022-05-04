# 1> Introduction
This documentation deals with how to get started with a specific system or program related to the use of the *BulkyMIDI-32*, but will in many cases also be relevant for use with a real *Roland MT-32* as well. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) as some terms may have been defined earlier.

- [1> Getting started](#1-getting-started)
- [2> ScummVM](#2-scummvm)

# 2> ScummVM
[ScummVM](https://www.scummvm.org/) is by far the easiest way to get started, and while it provides its own form of MT-32 emulation we can reconfigure it to output the MIDI instructions out to external devices instead by the use of a suitable *USB MIDI Interface* (the one I recommend is *Roland UM-ONE Mk2*). I'm not entirely convinced that there's all that much to be gained from swapping out one form of emulation over another, but the exact same instructions can be used to hook up a real MT-32 to ScummVM and for that reason it is an excellent way of testing that the MT32-PI functions as expected.

[Download](https://www.scummvm.org/downloads/#release) and install the software for your favourite platform, but note that unless that's MS Windows you might have to navigate menus that might be different from those shown (I can't afford the laptop I already have, so those are the limitations to what I can show you). Several games have been made freeware, for that reason I'm recommending that you download a copy of *Beneath a steel sky* from the [ScummVM Games](https://www.scummvm.org/games/#games-sky) page - preferably the CD-version. Extract the Zip-file somewhere you'll be able to find later, then add it to ScummVM using the *"Add Game..."* button. That should add the game to your list of games, but while you could start it up at this point just to see what the original version of the game would sound like.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/scummvm_mt32_001.png)

In order to make ScummVM work with an external MIDI module, we'll need to change the options to match by clicking the button simply marked *"Options..."*. Our first stop is the *MT-32*-tab, here you'll need to select any of *USB MIDI Interface* that were plugged in **when** you started the program. Enable *True Roland MT-32* to indicate that the device connected on the other end is either a real Roland MT-32 or the MT32-PI.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/scummvm_mt32_002.png)

Second is the *Audio*-tab, here we need to select the same external interface as your *Preferred device*. Some games, in particular some of the Sierra games will attempt to use the MT-32 for both music as well as sound effects, but this varies from title to title with most of the later games preferring a regular sound card for effects. Note that most of the games will have an animated intro sequence only using standard sound card, but the music will start to play either in the menu or once you're into the game. The MT32-PI allows you to switch between various *romsets* in *MT32*-mode by using the *ROM*-button, for the games that utilize the MT-32 for sound effects you'll usually get more authentic audio using the earliest version. 
