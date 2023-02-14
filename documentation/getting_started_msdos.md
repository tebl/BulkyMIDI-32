# 1> Introduction
This documentation deals with how to get started with a specific system or program related to the use of the *BulkyMIDI-32*, but will in many cases also be relevant for use with a real *Roland MT-32* as well. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started.md) as some relevant terms may already have been defined there.

Given that this document specifically deals with running primarily games on MS-DOS, there are bounds to be similarities with running the same thing in an emulated environment. One of the more popular ways of emulating it is through [DOSBox](https://www.dosbox.com/), a topic for which I've created an entirely separate [getting started ](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/getting_started_dosbox.md) guide.

- [1> Introduction](#1-introduction)
- [2> MS-DOS](#2-ms-dos)
  - [2.1> Gameport MIDI](#21-gameport-midi)
  - [2.2> MIDI over RS-232](#22-midi-over-rs-232)
  - [2.3> MT32-PI Control](#23-mt32-pi-control)
  - [2.4> Playing MIDI-files](#24-playing-midi-files)
- [3> Mixing the audio](#3-mixing-the-audio)

# 2> MS-DOS
MS-DOS doesn't really need an introduction as it was undoubtedly the norm for quite a few years. While there have been several different versions released of it, but for the sake of the verbosity I'll limit the guide to the more popular option - MS-DOS 6.22.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-10%2001.40.53.jpg)

When it comes to the hardware required to get the *BulkyMIDI-32* to play music was initially covered in the document on [setting it up](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/setting_it_up.md#11-basic-information). While the same applies to the original *Roland MT-32*, the confusion for newer users such as me was between what is known as an *MPU-401* in regards to the *Roland MT-32* and what soundcards whould normally list as *MPU-401 compatibility*. In regards to the Roland device they're talking about an intelligent MIDI device that would exist somewhere between your computer and the actual *Roland MT-32*, soundcards only defines it as a UART running at the expected baud rate. The difference is that the former processes the messages in some way, the latter just dumps them out at a fixed rate. I'm not sure my description is even entirely correct, it's just as far as I can get now that the devices themselves have gotten significantly more rare than the MIDI-modules themselves.

The good news is that the UART-based MIDI ports found on common soundcards later became the norm, so only a limited amount of games actually ended up needing what we've described as intelligent mode ([SoftMPU](https://github.com/bjt42/softmpu) maintains a [list of them](https://github.com/bjt42/softmpu/wiki/Compatible-Intelligent-Mode-Games)). The already mentioned [SoftMPU](https://github.com/bjt42/softmpu) software can be used to perform most of the intelligent part of it in software, allowing us to experience most of the games without down any obscure bit of hardware. 

So where do you actually plug the MIDI-cable then?

## 2.1> Gameport MIDI
Most 16-bit sound cards from the later part of the DOS-era had, as previously mentioned, support for the non-intelligent version of *MPU-401* built into them. The bad news, and you probably expected there'd be one at some point, is the extremely common Creative Sound Blaster 16 cards had a bug in them, causing an [annoying hanging note](https://www.vogonswiki.com/index.php/Hanging_note_bug) - which may distract you long enough to warrant installing a different sound card for your retro-machine. Who knew that one day there'd be a reason to recommend Sound Blaster-clones instead of the real thing, but if you have one of them available you may instead opt to do an upgrade to an AWE64 as an on-brand replacement.

Yes, but the cable?

The signals are right there on the gameport-connector, we just need to plug in a suitable adapter to go between the gameport and your *BulkyMIDI-32* or real *Roland MT-32*. As long as you make sure that you get one with the expected circuitry, and not simply the dumb cables you can find on AliExpress (ignoring the MIDI standard may or may not be a good idea), you should just use that. I didn't have one, so I built couple of simple variants of them:
- [Gameport](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport)
- [Gameport IDC](https://github.com/tebl/BulkyMIDI-32/tree/main/adapters/BulkyMIDI-32%20Gameport%20IDC)

The first variant just plugs straight into the sound card, but I didn't like having it like that so I build the IDC-version so that I could add a bit of ribbon cable between them with the expected set of connectors (16-pin IDC and a male DB-15 on the opposing end).

And the intelligent mode?

The intelligent mode can be added using the [SoftMPU](https://github.com/bjt42/softmpu) software, and I'm not going to go into detail on using it as I've had limit experience with using it. However the magical incantation seems to be something like the following (depending on your sound card settings):
```
SOFTMPU.EXE /SB:220 /IRQ:5 /MPU:330
```
![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/2022-08-10%2000.32.09.jpg)

## 2.2> MIDI over RS-232
One alternative to getting around the issue of hanging notes on certain affected cards, is by routing the signals out through a standard serial port instead. After all it's a hardware UART, almost like the one found as part on your sound card? Not quite so easily done, mainly because the standard baud rates that can by the cards will rely on the frequency of the crystal used for the timing - the closest baud rate comparable to MIDI, 31250, would be 38400. That's quite a bit outside of the tolerances for any MIDI-device, at least for those that lack the circuitry for talking directly to a PC. The vintage way of solving this was to either purchase a dedicated card, alternatively you could sacrifice a serial card - just simply changing out the crystal so that the speed can be matched. 

Then there's also the part where an RS-232 swinging between -12v and +12v on sufficiently old enough hardware would probably melt your MIDI-equipment, had we been foolish enough to connect them directly to eachother. Even if we got that down to an even 5v, we'd still need a bit of circuitry to make it MIDI-compliant.

We need someting to plug in between the two, and I've had a go at implementing this as part of the [Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras)-module. It includes the circuitry from converting an RS-232 signal to TTL, then an Arduino Pro Micro takes care of receiving the serial data and then retransmitting it at the baud rate suitable for communicating with MIDI-devices.

As far as the software goes I don't know of any titles that support this out of the box, but functionality has been added to [SoftMPU](https://github.com/bjt42/softmpu) in order to redirect writes to the MIDI-port so that it instead goes to the serial port. The command for doing this looks something like the following, substitute the COM-port as needed.

```
SOFTMPU.EXE /MPU:330 /OUTPUT:COM1
```

## 2.3> MT32-PI Control
The MT32-PI has extended support for interpreting a selection of MIDI instructions, messages that would naturally not be understood by a real *Roland MT-32*, these can be sent using simple DOS commands to the device in order to control the extra features that it brings to the table. This is provided as a separate project named [mt32-pi-control](https://github.com/gmcn42/mt32-pi-control), it is installed simply by downloading and extracting the DOS version of the [latest release](https://github.com/gmcn42/mt32-pi-control/releases).

You can test that it is working by telling to put some text on the screen.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_mt32_020.png)
```
MT32-PI.EXE -v -t "This is an example"
```

This is a very simple example, but the main purpose is of it is that by using the utility you can have the MT32-PI switch to the correct mode and relevant settings before the application is started. All of this can be put into a simple batch file, so that you can have the computer select the relevant settings for you before starting up the game.

## 2.4> Playing MIDI-files
So you've got MS-DOS up and running and now you want to play actual MIDI-files, those *\*.MID* thingies you've had on your hard-drive from the 90s. Perhaps you've even tried playing them on your modern MS Windows 10, wondering aloud to yourself, and a less than understanding cat - at how tinny and weak the tune had sounded. Well, that probably why you looked into building an MT32-PI in the first place - because MIDI actually used to be better.

![](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/dosbox_dosmid_002.png)

Doing it from MS-DOS, I've not seen all that many alternatives - not that I've had to look for very long, because [DOSMID](http://dosmid.sourceforge.net/) will play your tunes for you. As long as you've got a 286 or better, the program will let you play your song - just remember to specify that you want to send the MIDI information out to your device. Either playing MIDI through the gameport:
```
DOSMID.EXE /MPU=330 <file>.MID
```
Or directly out through the serial port, with a suitable system for baud rate conversion such as the one offered by the extras-board (substitute COM-port as needed):
```
DOSMID.EXE /COM1 <file>.MID
```

# 3> Mixing the audio
At this point you will most likely have the music coming out of your BulkyMIDI-32, separated from that of the sound effects generated by your sound card. If you have two sets of speakers or you're happy picking up an extra set, then that's the easiest solution. For any other cases you may want to look into some form of circuit or device for mixing the two together.

![BulkyMIDI-32 Extras](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/build_extras_080.jpg)

The solution provided for within the *BulkyMIDI-32* project, is through the [Extras](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Extras)-module and the addition of a simple passive mixer with up to two additional inputs that can be mixed into the audio. The output jack on the module, green connector as shown, is then connected to the input on your speakers/stereo system. The sound from the speaker output on your sound card, is then connected to one of the two inputs. Using the corresponding potentiometer you can fine-tune how loud the sound effects will be in relation to the music. It probably won't compare with any dedicated solution designed for any natural or educated audiophile, but it serves as a place to get started.

![SB16 mixerset](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/msdos_mixer_001.png.jpg)

A second option that have been covered in great detail on a video by [PhilsComputerLab](https://www.youtube.com/watch?v=zPBSO02BUhc&t=379s), it shows a different way of mixing the audio by plugging the MT-32 (real or emulated) output into the *Line IN* on your sound card. In this case you need to ensure that the input haven't been disabled, it also needs to have a volume that haven't been turned all the way down. Most Sound Blaster cards have a version of these tools though the one that you're using may look slightly different from the one shown, just note that the settings will be different in DOS and Windows 3.11 as shown below.

![Creative Mixer](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/msdos_mixer_002.png.jpg)

**NB!** On the sound card that I currently have installed (AWE32 CT3670), the music will only come out of my left speaker when using this method. As the tools and functionality of different cards will be unique to your specific setup, I'm only including it here as an option in case it is an otion that ends up working for you.