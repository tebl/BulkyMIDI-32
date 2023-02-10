# 1> Introduction
This documentation deals with how to get started with a specific system or program related to the use of the *BulkyMIDI-32*, but will in many cases also be relevant for use with a real *Roland MT-32* as well. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) as some terms may have been defined earlier.

- [1> Introduction](#1-introduction)
- [2> Commodore Amiga](#2-commodore-amiga)
  - [2.1> Music-X](#21-music-x)
    - [2.1.1> Amiga Format issue 58, coverdisk A](#211-amiga-format-issue-58-coverdisk-a)
    - [2.1.2> Playing some music](#212-playing-some-music)
  - [2.2> Space Quest IV](#22-space-quest-iv)
    - [2.2.1> The easy way](#221-the-easy-way)
    - [2.2.2> The less easy way](#222-the-less-easy-way)
    - [2.2.3> The cheating way](#223-the-cheating-way)

# 2> Commodore Amiga
I really can't speak for all manner of Commodore Amiga hardware, so I'll try to keep things brief when it comes to the hardware that I actually own. If you feel like a grave injustice have been commited by leaving out some important piece of hardware, then feel free to send me one and I promise to love it - then somewhere down the road, add a description relevant to it. 

Onto more serious things; A frequent point of ridicule from most original owners of the *Atari ST*-line of computers, is that the Amiga computers didn't include builtin MIDI-ports. Almost all of them, but if you were one of the few that actually had a *Commodore CDTV* then you were lucky enough to also have seen the culmination of that ridicule: a beast of an Amiga 500, with a single speed CD-ROM that have mostly been seen as its only saving grace - however, it did also have the MIDI-ports that they had made you covet! Well, that - and the cool case design.

![Commodore Amiga CDTV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_cdtv.jpg)

On a more realistic note, you probably didn't own one of those and if you do now - it's doubtful that it is your preferred Amiga-system. For all of the other options you'll need something extra, and if your machine is an Amiga 500, 600, 1200, 2000, 3000 or 4000 then you can use a very simple *RS-232 to MIDI*-adapter such as the adapters included as part of this project ([BulkyMIDI-32 Amiga](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga) or [BulkyMIDI-32 Amiga IDC](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Amiga%20IDC)). If you own an Amiga 1000 or CD32, then I have no idea.

![Amiga RS-232 to MIDI](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_amiga_idc_009.jpg)

As so little MIDI-support was available out of the box, there isn't really all that much out there that supported the Roland MT-32. When it comes to the games, there are only 13 games listed (according to [wikipedia](https://en.wikipedia.org/wiki/List_of_MT-32-compatible_computer_games)) though that does include quite a few games where you'd need to look for specific versions of those games and in some cases copy files between realeases as not all versions shipped with all of the required files present. To get you started with the device, I'll include instructions for [Space Quest IV](#22-space-quest-iv). On the software side for playing and authoring music, I don't have much in the area of expertise to draw from and I'll only cover [Music-X](#21-music-x).

## 2.1> Music-X
I'm not really familiar with this specific piece of software regarding it's popularity, mainly because I've never owned any sense of rhythm. To be honest I didn't actually learn to appreciate much music until a later point in life, but while that's for the most part a story for another time. But I'll tell you anyway, all it turned out to be was that I simply did not appreciate the kind of music that played on the radio stations available during those years. For some reason, I really liked the kind of music my Commodore 64 played. Coincidence when looked back upon? I think not.

![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_011.png)

Back to Music-X. The program was released back in 1988 by David Joiner, the task of explaining the history behind the software is probably better left to the man itself - which you actually can, all of that is on his own [homepage](https://dreamertalin.medium.com/music-x-b4abc68d6f78). So go do that now.

### 2.1.1> Amiga Format issue 58, coverdisk A
 Back to less interesting people - me! Where I stumbled upon this piece of software, remembering that I had no idea about this stuff originally, was as a coverdisk for Amiga Format issue number 58. Unfortunately for me the disk in my posession, had deteriorated enough that I couldn't read it properly. Luckily the disk had been already been preserved for the forseeable future on [archive.org](https://archive.org/details/amigaformat058disks_1994-04/af058a.jpg), so all I needed to do was to download coverdisk A from there. 
 
![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_001.png)

To keep things as simple as possible, I'm using WinUAE until everything's ready to plug into real hardware. As with most coverdisks of that era, the software isn't actually ready to run from the disks - they're compressed. This single disk extracts onto three separate empty disks, just click each one in turn to extract it - you'll be prompted when it's time to insert a blank disk (thankfully, WinUAE has an easy way of creating these disks).
 
![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_002.png)
![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_003.png)

Unless you'll be looking into creating music within the software, you could probably do without the utilities disk. A prominent feature of this disk, among other interesting utilities, is a way of converting Music-X *performances* into the well known MIDI-format for playback elsewhere.
 
 ### 2.1.2> Playing some music
 I don't know how to play any form of music, so don't get your hopes up - we'll only be loading up one of the example tracks. With the required MIDI-adapter plugged into your serial port, wired up to your *BulkyMIDI-32* or real *Roland MT-32* using a suitable MIDI-cable you can switch on the computer and start up from the first disk.

![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_010.png)

And - yes - the colours were set up like that from start, no need to adjust your monitor. You can have a look at the preferences, but everything should already be set up to work out of the box so just start up the software by clicking *Music-X*. You should hear a short jingle played through the MT-32 as the software loads, then you'll be dropped into a blank *performance* with only a metronome track present. 
 
 ![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_012.png)
 
 A sample performance can be loaded from the examples disk, this is done using the dropdown-menu in order to load a new performance. Browsing around you should be able to find a selection of music tracks that you can play around with.
 
 ![Music-X](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_musicx_013.png)

Not all tracks seem to have been written with the MT-32 in mind, but as far as I understand it you can see the column at the bottom marked "*Out*". The tracks that use it will have sequences with out set to *Ex1* while *INT* denotes that the performance have been made using traditional samples instead of MIDI-instruments. The controls work as expected, the only quirk I experienced was that when loading a new track the track position was not reset - meaning that you wouldn't get any music if the track you just loaded was shorter than the current position. If this happens, just click *BEGIN* to reset it.
 
## 2.2> Space Quest IV
As mentioned earlier, not all of the games [listed](https://en.wikipedia.org/wiki/List_of_MT-32-compatible_computer_games) as supporting the MT-32 actually comes with all of the files required to use the feature - I expect that the music was written for a lot of the games with it as a starting point, but the sample-based music was the mode we were expected to ever see. I think all of the titles are made by Sierra in some form or another, so they use the same system for loading the drivers though the supporting environment have gone through several cycles of development between them. Some of the games will only have shipped with *amigasnd.drv*, meaning that we need to copy *mt32.drv* from a different game to add the support. Other games again will require that we rename a few files, but I don't know what the specific steps would be for every other game.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_020.png)

Some games like Space Quest IV will have it's own utility to change between the drivers, we'll call that doing it the easy way. Other older titles require that we manually edit the configuration file, the less easy way that I'm just covering in case you need it.

### 2.2.1> The easy way
The easy way, as already mentioned is for the games where the ability to play music through the MT-32 remained intact and functional. Other than Space Quest IV, I believe the enhanced version of Leisure Suit Larry also has the same method of configuring it. Boot the machine from the Workbench disks that came with your computer, I'm doing this on an Amiga 500 - so Workbench 1.3 is where I ultimately get my kicks.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_001.png)
![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_002.png)

Once in Workbench, either swap to or insert your Space Quest IV startup disk into a connected disk drive. Starting up the install utility, you can select the *mt32.drv* then hit update to have the configuration saved onto the disk. You might be tempted to just start the game from the disk, but you need to start from the disk before it'll actually load.

### 2.2.1> The less easy way
The less easy way, also known as the way you need to do it on the older games that don't come with one of these handy little utilities - is to edit the configuration yourself. I'm not aware of any way of doing it on an a non-HDD installed copy of *DOPUS*, but people with a better memory or things than me may think of an easy solution. The way I'm showing from this point, is *DOPUS* as it came along with my installation of [Classic Workbench](https://classicwb.abime.net/) within *WinUAE*.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_011.png)

The two drivers can be seen here as well, *amigasnd.drv* which is the default one as well as *mt32.drv*. As previously mentioned some games might be missing the latter, in which case you now know that it can be copied from your *SQ4 Startup disk* onto the startup disk of the other games you might be trying to get it working with as well. To select the driver the less easy way, you need to mark only the file called *resources.cfg* and the click on *Edit*.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_013.png)

As you might've imagined, what comes next is just changing the value of *soundDrv* so that it shows as in the picture above. Save the file from the dropdown-menu before exiting out of the editor.

### 2.2.3> The cheating way
Loading up Space Quest IV from floppy can be a tedious ordeal, particularly if you're not sure whether it is set up as it should. Given that we've probably already been exclusively working within the confines of *WinUAE*, we can simply test it out before moving onto real hardware.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_015.png)

From *IO ports*, you can have the software output MIDI messages to the default mechanism for playing MIDI on your system - given that I'm using Microsoft I just selected whatever presented to me. One thing of note is that the original MT-32 didn't pre-dates the MIDI standard we now know as *General MIDI*, what that means is that it'll be playing notes as programmed in - it just won't be making any sensible choices when it comes to the selection of instruments. This is normal and this is just a thing so that we can see that the game loads and plays MIDI at all. If you have your *BulkyMIDI-32* hooked up to your system via a suitable USB to MIDI adapter, then obviously - go for that instead.

![Space Quest IV](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/amiga_sq4_016.png)

Space Quest IV when used with a single floppy disk drive will require somewhere around 30-40 disk swaps before the game actually starts, so for that reason it is highly recommended that you at least have two disk drives available. When testing things out, just crank the *Floppy Drive Emulation Speed* right up to *ludicrous*.

Feel free to play around with it, especially if you've been reading this while looking for the solution for playing a different game with MT-32 support. Once you are satisfied everything is set up correctly and the game works, transfer the files you need to a USB-drive and put that Gotek to work (I *know* you have one). 