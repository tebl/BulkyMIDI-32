# 1> Setting it up
The [documentation](https://github.com/tebl/BulkyMIDI-32/tree/main/BulkyMIDI-32%20Module#bulkymidi-32-module) that comes with the main module mostly only deals with soldering the device together, the purpose of this document is installing the software onto an SD-card for inserting into your Raspberry Pi model 3 or 4. Most of this will be a repeat of the information already covered in some form within the [MT32-PI Wiki](https://github.com/dwhinham/mt32-pi/wiki), but condensed down to only feature options provided by the BulkyMIDI-32. It is my belief that this is a more beginner-friendly approach for when you just want to get to the music as fast as possible, but feel free to head on over to the mentioned wiki once you're feeling up to it.

- [1> Setting it up](#1-setting-it-up)
  - [1.1> Basic information](#11-basic-information)
  - [1.2> Preparing SD-card](#12-preparing-sd-card)
  - [1.3> Configuring MT32-PI](#13-configuring-mt32-pi)
    - [1.3.1> USB support](#131-usb-support)
    - [1.3.2> Configure DAC](#132-configure-dac)
    - [1.3.3> Control scheme](#133-control-scheme)
    - [1.3.4> Display type](#134-display-type)
  - [1.4> Plugging it in](#14-plugging-it-in)

## 1.1> Basic information
The original Roland MT-32 synth module was released all the way back in 1987, but while the module is certainly an expensive piece of equipment these days there is an even more expensive obstacle you'll encounter right after buying one. You see, the Roland MT-32 actually pre-dates MIDI as the standard we now know and love today, meaning that just because something has a MIDI out on it doesn't actually mean you get to start up a PC game MT32 music just like that.

![Roland MT32](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/roland_mt32.jpg)

The reason is that some games not only expect MIDI, they expect an intelligent form of MIDI - requiring a suitable interface card as well as a module that goes in between the two called an *MPU-401*-module (those alone will set you back 2-3 times what you already paid for the MT32 itself). Sound cards may have been advertising MPU-401 compatibility, but it still isn't intelligent MIDI - it's what is called UART MIDI. There's a piece of software called [SoftMPU](http://bjt42.github.io/softmpu/) that may increase the amount of games that'd work without intelligent mode, but considering this [compatibility list](http://dosdays.co.uk/topics/mt32_game_compat.php) you should know that these limitation would also extend to the [MT-32](https://github.com/dwhinham/mt32-pi).

This mainly just extends to using the MT-32 with what we used to call IBM PC compatible machines, other machines where you wouldn't have the ability to plug in dedicated interface usually wouldn't have this distinction. Meaning that, if you just want to jump right into things that Atari ST computers, as well as some Commodore Amiga variants, might be a bit easier to get started with. Using either the original MT-32 or the MT32-PI with emulation in the form of ScummVM or Dosbox is also an option to consider, preferably used with a quality USB to MIDI adapter such as the Roland UM-ONE shown below (don't be tempted by the significantly cheaper options, they might not be safe to use with your equipment).

![Roland UM-ONE](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/roland_um_one.jpg)

MT32-PI does however support quite a lot things that the original MT-32 never did, in particular - *General MIDI*. From my understanding it is mostly the same general hardware, but more or less a general agreement of how instruments are arranged logically. What this means is that instrument X is a piano, then it'd be their version of a piano-sound on on all devices supporting General MIDI. I'm sure that's a gross over-simplification on my part, but it's the description that works for me. The MT32-PI refers to this as *Soundfont*-mode, pushing the *Synth*-button will cycle between the regular *MT32*-mode and the *Soundfont*-mode. Various soundcards and modules would come with their own versions of what the different instruments would sound like, when it comes to the MT32-PI these will be referred to as different *soundfonts* and you'd need to experiment a little to find the ones that sound *"correct"* to your ears.

## 1.2> Preparing SD-card
As with anything dealing with a Raspberry Pi, you'll need a MicroSD card of reasonable quality - you probably won't use more than a few hundred megabytes so there's no reason to look for anything beyond the smallest capacity you can find (usually 16GB). The card needs to have been formatted with FAT32 as the file system, but this is standard for smaller cards so unless you've used it for different projects before then you probably won't need to think about this.

Start by downloading the last release of the MT32-PI, the file will be listed under *assets* on the projects [releases](https://github.com/dwhinham/mt32-pi/releases)-page. Extract the contents of this zip-file directly onto the root of your SD-card. There are however some files that will **NOT** have been included in this, the reason for this is that these are owned by various companies around the world and you need to obtain these by yourself!

The first of these is the firmware from the original Roland MT-32 models, but if you were to [google](https://www.google.com/search?q=mt32-pi+roms) you'll find that there are versions of these files that have been archived for posterity. The files themselves need to put in the **roms**-directory of your memory card, though MT32-PI will happily let you switch between various versions of the firmware by pushing the synth-button you'll want the older version for most games.

The second that you'd need to locate are *soundfonts*, these need to be put into the **soundfonts**-directory. The [MT32-PI Wiki](https://github.com/dwhinham/mt32-pi/wiki) has a list of [Recommended Soundfonts](https://github.com/dwhinham/mt32-pi/wiki/Recommended-SoundFonts), depending on your background you may have different preferences though I'd recommend that you start with those that came with the Creative Soundblaster then experiment from there.

## 1.3> Configuring MT32-PI
The MT32-PI software behavior is by editing the file *mt32-pi.cfg* in your favourite text-editor, it follows a common format similar to classic INI-files that've haunted us since the early days of MS Windows. The files are organized in sections with the section being named in a pair of brackets, which I've mainly included so that you now where to find something in the default configuration - meaning that the configuration included here will just be the required changes and not the entire file.

### 1.3.1> USB support
The first change depends on how we want to use the device, but if you don't need support for USB-devices plugged directly into the Raspberry Pi then you might as well disable *usb* entirely. This allows the device to boot quite a bit quicker, which is why I've included it here.
```
[system]
usb = off
```

### 1.3.2> Configure DAC
This sets up the software so that sound is sent out using the DAC-module instead of using the rather dreadful audio normally found on the Raspberry Pi. If you are using the common purple GY-PCM5102 module as expected with the BulkyMIDI-32, then you should not need any further changes for this.
```
[audio]
output_device = i2s
```

### 1.3.3> Control scheme
The control scheme depends on the hardware available, for the BulkyMIDI-32 I've opted for the *simple_buttons* scheme (four buttons: synth, ROM, volume up and volume down). There is a header provided for using a rotary encoder, *simple_encoder*, but you will rarely need to use it.
```
[control]
scheme = simple_buttons
```

### 1.3.4> Display type
The BulkyMIDI-32 can be built with a selection of screens, but in the design I've focused on common 128x64 OLED over I2C. The one I prefer for this is the larger 1.3" inch screen from *diymore*, but note that while they probably sold it to you as having a ssd1306 controller things they are not completely compatible and you'd need to specify this as type *sh1106_i2c* instead. One thing to note is that the displays I bought had indication on the back that it would have I2C address *7a*, but you need to keep it at the default *3c* instead as it is the only seemed to work for me.
```
[lcd]
type = sh1106_i2c
height = 64
rotation = inverted
```

If you built your BulkyMIDI-32 with a regular 0.96" inch screen, then specify the LCD type as *ssd1306_i2c* instead. The other options are simply repeated for clarity, but they are the same as with the 1.3" inch screen.
```
[lcd]
type = ssd1306_i2c
height = 64
rotation = inverted
```

## 1.4> Plugging it in
With the contents of the SD-card already prepared, insert it into the slot on the Raspberry Pi. Your BulkyMIDI-32 is powered up using any good quality 5V DC center positive PSU with a 2.1mm x 5.5mm barrel connector, but note that you will need one that is powerful enough for the version of the Raspberry Pi you've installed (ideally it should be at least 3A when using a model 4). Note however that before even considering plugging it up to any of your vintage audio equipment, you should try it out without anything else plugged into it. The display should light up as expected with some information, you should also be able to change options using the switches.

If nothing appears to work, your first instinct might be plugging in an HDMI cable to see whether it is generating any video. If you get a rainbow screen then the software isn't starting up at all, meaning you need to take a second to verify that your SD-card is correctly inserted and formatted correctly. Additionally, with an underpowered power supply you might also end up with a low voltage warning shown in the form of a yellow lightning bolt on the screen. Should the software start to boot as expected you will get a blank screen, the reason for this is that the MT32-PI software doesn't generate video and should for that reason be considered normal behavior. A more common fault is simply that the display has not been [configured]((#134-display-type)) correctly.

When everything appears to be functioning, now might be the time to [get started](https://github.com/tebl/BulkyMIDI-32/blob/main/documentation/get_started.md) on actually using it. The easiest method by far is using a USB MIDI interface with ScummVM.