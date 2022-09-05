# BaudrateConverter
Used to convert the baud rates provided by vintage computers to the rate used by MIDI devices, the closest for a PC would be 38400 baud which we'll attempt to have a go at converting to 31500 baud.

The firmware itself can for the most part be configured using the jumpers at *J14* and *J15*, one is immediately above the other though for the default operation of the device as expected you won't need to add any jumpers here. Note that the device has two modes of operation provided by the device, using the ASCII setting (with a jumper in place) will use the MIDI library to decode and retransmit the data as MIDI-messages. The binary setting simply shuffles the data byte by byte, this is the current default setting and it is the one that'll work with the least amount of debugging needed.

## Resources
These may be of interest to some, but mainly I just wanted to clean up my browser-tabs by dumping them here instead.

- [MIDI-tutorial](https://learn.sparkfun.com/tutorials/midi-tutorial/introduction)
- [MIDI-tutorial (advanced-messages)](https://learn.sparkfun.com/tutorials/midi-tutorial/advanced-messages)
- [Programmers MIDI-tutorial](https://www.cs.cmu.edu/~music/cmsip/readings/MIDI%20tutorial%20for%20programmers.html)
- [Summary of MIDI 1.0 Messages](https://www.midi.org/specifications-old/item/table-1-summary-of-midi-message)
- [Full List of MIDI CC Numbers](https://www.paulcecchettimusic.com/full-list-of-midi-cc-numbers/)