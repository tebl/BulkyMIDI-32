#include <Arduino.h>
#include <RotaryEncoder.h>
#include <ezButton.h>
#include <SPI.h>
#include <SdFat.h>
#include <Wire.h>
#include <SSD1306Ascii.h>
#include <SSD1306AsciiWire.h>
#include <MD_MIDIFile.h>
#include "constants.h"
#include "settings.h"
#include "player_state.h"
#include "menu_option.h"
#include "custom_led.h"
#include "custom_font.h"
#include "logo.h"

SSD1306AsciiWire oled;
RotaryEncoder encoder(PIN_PREV, PIN_NEXT, RotaryEncoder::LatchMode::FOUR3);
CustomLED activity_led(PIN_ACTIVITY, LED_DECAY);
CustomLED system_led(PIN_SYSTEM, LED_DECAY);
ezButton button(PIN_RE_BTN);

SDFAT SD;
MD_MIDIFile SMF;

PlayerState state = PlayerState::INACTIVE;
bool autoplay_enabled = false;
bool wraparound_enabled = false;
bool metronome_enabled = false;
unsigned long track_start;

uint8_t menu = MenuOption::MENU_PLAY;
bool update_oled = true;
unsigned long button_count = 0;
unsigned long button_timer = 0;
int encoder_pos = 0;

uint8_t tempo_offset = 10;

SDDIR dir;
SDFILE file;
int file_id = -1;
int last_id = -1;
char filename[FILENAME_MAX_LENGTH];


/* Show a warning message on the screen. This will block the execution of
 * everything for a set amount of time before returning.
 */
void show_warning(const __FlashStringHelper *message) {
  oled.clear();
  oled.setFont(custom_font);
  oled.println();
  oled.println(F("      @"));
  oled.println();
  oled.println(message);
  delay(2500);
  update_oled = true;
}

/* Blocking error message, this will just print the message to the screen and
 * then hang there forever. Intended for use with permanent errors.
 */
void show_error(const __FlashStringHelper *error) {
  oled.clear();
  oled.setFont(custom_font);
  oled.println();
  oled.println(F("      @"));
  oled.println();
  oled.println(error);
  while(true);
}

/* Called by the MIDIFile library when a file event needs to be processed thru
 * the midi communications interface.
 *
 * This callback is set up in the setup() function.
 */
void midi_callback(midi_event *pev) {
  if ((pev->data[0] >= 0x80) && (pev->data[0] <= 0xe0)) {
    Serial1.write(pev->data[0] | pev->channel);
    Serial1.write(&pev->data[1], pev->size-1);
  } else Serial1.write(pev->data, pev->size);\
}

/* Called by the MIDIFile library when a system Exclusive (sysex) file event
 * needs to be processed through the midi communications interface. Most sysex
 * events cannot really be processed, so we just ignore it here.
 * 
 * This callback is set up in the setup() function.
 */
void sysex_callback(sysex_event *pev) {
}

/* Turn everything off on every channel. Some midi files are badly behaved and
 * leave notes hanging, so between songs turn off all the notes and sound.
 */
void midi_silence(void) {
  midi_event ev;

  // All sound off
  // When All Sound Off is received all oscillators will turn off, and their volume
  // envelopes are set to zero as soon as possible.
  ev.size = 0;
  ev.data[ev.size++] = 0xb0;
  ev.data[ev.size++] = 120;
  ev.data[ev.size++] = 0;

  for (ev.channel = 0; ev.channel < 16; ev.channel++)
    midi_callback(&ev);
}

void find_file_id(int wanted_id) {
  if (!dir.open("/", O_RDONLY)) {
    show_warning(F("SD read fail!"));
    return;
  }

  file_id = -1;
  while (file.openNext(&dir, O_RDONLY)) {
    if (!file.isSubDir() && !file.isHidden()) {
      memset(filename, 0, FILENAME_MAX_LENGTH);
      if (file.getName(filename, FILENAME_MAX_LENGTH)) {
        if (is_supported(filename)) {
          // First file found always counts as 0
          if (file_id == -1) file_id = 0;
          else file_id++;
        }
      }
    }
    file.close();

    // Check to see if we've seen the ID we wanted
    if (file_id == wanted_id) break;
  }

  dir.close();
  update_oled = true;
}

void show_logo() {
  #ifdef BOOT_SCREEN
    byte row = 0; // Start row
    byte col = 0 ; // Start col
    int a = 0;
    for (byte b = 0; b < 4; b++) {
      oled.setCursor(col, (row+b)); 
      for (byte i = 0; i < 128; i++) {
        oled.ssd1306WriteRam(pgm_read_byte(&logo[a]));
        a++;
      }  
    }

    delay(BOOT_SCREEN);
  #endif
}

void setup() {
  Serial1.begin(SERIAL_RATE);
  activity_led.boost(2500);
  button.setDebounceTime(DEBOUNCE_DELAY);
  oled.begin(&Adafruit128x32, I2C_ADDRESS);
  show_logo();

  // Initialize SD, this will block on error
  if (!SD.begin(PIN_SD_SELECT, SPI_FULL_SPEED)) {
    system_led.enable();
    show_error(F("Init failed"));
  }
  system_led.clear();

  Wire.begin();
  Wire.setClock(400000L);

  // Initialize MIDIFile
  SMF.begin(&SD);
  SMF.setMidiHandler(midi_callback);
  SMF.setSysexHandler(sysex_callback);

  find_file_id(0);
}

/* Flash an LED to the beat. Hopefully. I've tried it and while I can't keep a
 * rhythm to save my life, it doesn't quite seem right to me. Or it's working
 * perfectly. One of those two. Possibly.
 */
void tick_metronome(void) {
  static uint32_t lastBeatTime = 0;
  static boolean  inBeat = false;
  uint16_t  beatTime;

  beatTime = 60000 / SMF.getTempo();    // msec/beat = ((60sec/min)*(1000 ms/sec))/(beats/min)
  if (!inBeat) {
    if ((millis() - lastBeatTime) >= beatTime) {
      lastBeatTime = millis();
      activity_led.enable();
      inBeat = true;
    }
  } else {
    // keep the flash on for 100ms only
    if ((millis() - lastBeatTime) >= 100) {
      activity_led.clear();
      inBeat = false;
    }
  }
}

void set_state(PlayerState new_state) {
  state = new_state;
  switch (state) {
    case PlayerState::PAUSED:
    case PlayerState::PLAYING:
    case PlayerState::INACTIVE:
      system_led.boost(LED_DELAY);
      break;
    case PlayerState::INTERMISSION:
      track_start = millis() + TRACK_PAUSE;
      break;

    case PlayerState::ERROR:
      system_led.enable();
      break;

    case PlayerState::MENU:
      menu = MenuOption::MENU_PLAY;
      system_led.boost(LED_DELAY);
      break;
    
    default:
      activity_led.boost(LED_DELAY);
      break;
  }
  update_oled = true;
}

/* Attempt to verify that a file can be used with the device, this is only done
 * by checking that the extension is ".mid" and nothing else. The purpose is
 * simply to ignore various other files found on the memory card.
 */
bool is_supported(const char * filename) {
  const size_t length = strlen(filename);
  if (length < 5) return false;
  if (!(filename[length - 4] == '.')) return false;
  if (!(filename[length - 3] == 'm' || filename[length - 3] == 'M')) return false;
  if (!(filename[length - 2] == 'i' || filename[length - 2] == 'I')) return false;
  if (!(filename[length - 1] == 'd' || filename[length - 1] == 'D')) return false;
  return true;
}

void do_play_file(bool looping) {
  if (file_id == NO_FILE) {
    show_warning(F("Not a file!"));
  } else {
    int err = SMF.load(filename);
    SMF.looping(looping);
    if (err != MD_MIDIFile::E_OK) {
      switch (err) {
        case MD_MIDIFile::E_NOT_MIDI:
          show_warning(F("Invalid format!"));
          break;

        case MD_MIDIFile::E_TRACKS:
          show_warning(F("Track number"));
          show_warning(F("too high!"));
          break;

        default:
          show_warning(F("Load failed!"));
          break;
      }
    } else {
      system_led.clear();
      set_state(PlayerState::PLAYING);
    }
  }
}

void do_play() {
  do_play_file(false);
}

void do_play_single() {
  autoplay_enabled = false;
  do_play();
}

void do_play_auto() {
  autoplay_enabled = true;
  do_play();
}

void do_play_loop() {
  do_play_file(true);
}

void do_find_next() {
  find_file_id(file_id + 1);
}

void do_find_previous() {
  if (file_id > 0) find_file_id(file_id - 1);
  else find_file_id(0);
}

void do_pause() {
  set_state(PlayerState::PAUSED);
  SMF.pause(true);
  midi_silence();
}

void do_unpause() {
  set_state(PlayerState::PLAYING);
  SMF.pause(false);
}

void do_stop() {
  SMF.close();
  midi_silence();
  set_state(PlayerState::INACTIVE);
}

void do_continue() {
  track_start = millis();
}

void do_increase_tempo() {
  if (tempo_offset < 20) {
    tempo_offset++;

    SMF.setTempoAdjust(SMF.getTempoAdjust() + 10);
    update_oled = true;
  }
}

/* BUG: I have no idea how tempo works, but I've tried to add a limit to how
 *      many steps we can move from the center. The issue is that when you
 *      go too slow it goes nuts and plays the whole file as fast as it can
 *      possibly go. I think this is something to do with the math not quite
 *      mathing in the library when it approaches the limit of certain values.
 */
void do_decrease_tempo() {
  if (tempo_offset > 0) {
    tempo_offset--;
    
    SMF.setTempoAdjust(SMF.getTempoAdjust() - 10);
    update_oled = true;
  }
}

void do_reset_tempo() {
  tempo_offset = 10;
  SMF.setTempoAdjust(0);
  update_oled = true;
}

void do_menu() {
  set_state(PlayerState::MENU);
}

void do_menu_next() {
  if (menu < MenuOption::MENU_INFO) {
    menu++;
  }
}

void do_menu_previous() {
  if (menu > MenuOption::MENU_PLAY) {
    menu--;
  }
}

void do_menu_exit() {
  set_state(PlayerState::INACTIVE);
}

void do_menu_select() {
  switch (menu) {
    case MenuOption::MENU_PLAY:
      do_play_single();
      break;

    case MenuOption::MENU_LOOP:
      do_play_loop();
      break;

    case MenuOption::MENU_AUTO_PLAY:
      do_play_auto();
      break;

    case MenuOption::MENU_METRONOME:
      metronome_enabled = !metronome_enabled;
      if (metronome_enabled) {
        activity_led.boost(LED_DELAY);
      }
      do_menu_exit();
      break;

    case MenuOption::MENU_INFO:
      set_state(PlayerState::INFO);
      break;

    default:
      break;
  }
}

/* Long press while a track is being played, we'll reset the tempo in case
 * we've adjusted it earlier. When playing it at regular speed we'll stop
 * the track instead.
 */
void do_playing_longpress() {
  if (SMF.getTempoAdjust() == 0) {
    do_stop();
  } else {
    do_reset_tempo();
  }
}

/* Check the state of the rotary encoder, calling functions for the relevant
 * directions as needed.
 */
void check_encoder(void (*clockwise)(), void (*counter_clockwise)()) {
  int newPos = encoder.getPosition();
  if (encoder_pos != newPos) {
    switch (encoder.getDirection()) {
      case RotaryEncoder::Direction::CLOCKWISE:
        (*clockwise)();
        update_oled = true;
        break;
        
      case RotaryEncoder::Direction::COUNTERCLOCKWISE:
        (*counter_clockwise)();
        update_oled = true;
        break;

      case RotaryEncoder::Direction::NOROTATION:
      default:
        break;
    }

    encoder_pos = newPos;
  }
}

/* Checks the state of the button, if it has been pressed then we need to
 * see if we held it long enough to count as a long press. Depending on which
 * duration was seen we call one of the two functions passed to us.
 * 
 * The return type can be used when we want to perform some other task
 * depending on this, such as processing data instead of button tasks.
 */
bool check_button(void (*short_press)(), void (*long_press)()) {
  if (button.isPressed()) {
    button_count = button.getCount();
    button_timer = millis() + BUTTON_LONGPRESS;
  }
  
  if (button.isReleased()) {
    if (button_count == button.getCount()) {
      if (millis() < button_timer) {
        (*short_press)();
      } else {
        (*long_press)();
      }
    }
    return true;
  }
  return false;
}

/* State is shown via various tiny symbols on the screen. The ATMega328P does
 * not have the power to do graphics while actually doing something, so all of
 * the graphics are altered characters in a custom font. That also explains why
 * they're tiny. As well as why the code prints seemingly random characters. 
 */
void show_state() {
  switch (state) {
    case PlayerState::PLAYING:
      oled.print(F("      {     "));

      // Tempo indication
      if (SMF.getTempoAdjust() > 0) oled.print(F(">"));
      else if (SMF.getTempoAdjust() < 0) oled.print(F("<"));
      else oled.print(F(" "));

      if (SMF.isLooping()) oled.print(F("$"));
      else if (autoplay_enabled) oled.print(F("^"));
      oled.println();
      break;
    
    case PlayerState::INTERMISSION:
      oled.print(F("      ^     "));
      oled.print(F(" "));
      oled.print(F(">"));
      oled.println();
      break;

    case PlayerState::MENU:
      oled.print(F("      :     "));
      oled.print(F(" "));
    
      switch (menu) {
        case MenuOption::MENU_PLAY:
          oled.print(F("{"));
          break;
        case MenuOption::MENU_LOOP:
          oled.print(F("$"));
          break;
        case MenuOption::MENU_AUTO_PLAY:
          oled.print(F("^"));
          break;
        case MenuOption::MENU_METRONOME:
          oled.print(F("*"));
          break;
        case MenuOption::MENU_INFO:
          oled.print(F("i"));
          break;
        default:
          oled.print(F("?"));
          break;
      }
      oled.println();
      break;

    case PlayerState::PAUSED:
      oled.println(F("      |"));
      break;

    case PlayerState::ERROR:
      oled.println(F("      @"));
      break;

    case PlayerState::INFO:
      oled.println(F("      i"));
      break;

    default:
      oled.println(F("      }"));
      break;
  }
}

void show_data() {
  switch (state) {
    case PlayerState::INFO:
      oled.println();
      oled.println(F("PLAY 0.2"));
      break;
    
    default:
      oled.println();
      oled.println(filename);
      break;
  }
}

void handle_screen() {
  if (update_oled) {
    oled.clear();
    oled.setFont(custom_font);
    oled.println();
    show_state();
    show_data();
    update_oled = false;
  }
}

void handle_state() {
  switch (state) {
    case PlayerState::INACTIVE:
      check_encoder(do_find_next, do_find_previous);
      check_button(do_play_single, do_menu);
      break;

    case PlayerState::MENU:
      check_encoder(do_menu_next, do_menu_previous);
      check_button(do_menu_select, do_menu_exit);
      break;

    case PlayerState::PLAYING:
      check_encoder(do_increase_tempo, do_decrease_tempo);
      if ( !check_button(do_pause, do_playing_longpress) ) {
        if (!SMF.isEOF()) {
          // We're currently in the process of playing a track.
          if (SMF.getNextEvent()) {
            if (metronome_enabled) {
              tick_metronome();
            }
          }
        } else {
          // We've reached the end of the track, never happens on looping
          do_stop();

          // If we're in autoplay-mode, then try to play the next track found
          if (autoplay_enabled) {
            last_id = file_id;
            do_find_next();

            // Check if next track found is the same as the previous one,
            // meaning that the track we just played was the last one.
            if (file_id == last_id) {
              if (wraparound_enabled) {
                // Find first file, then pause slightly before playing
                find_file_id(0);
                set_state(PlayerState::INTERMISSION);
              } else {
                // We don't have a next file
              }
            } else {
              // Pause slightly before playing
              set_state(PlayerState::INTERMISSION);
            }
          }
        }
      }
      break;

    case PlayerState::INTERMISSION:
      if (millis() > track_start) {
        track_start = 0;
        do_play();
      } else {
        check_button(do_continue, do_continue);
      }
      break;

    case PlayerState::PAUSED:
      check_button(do_unpause, do_stop);
      break;

    case PlayerState::INFO:
      check_button(do_menu_exit, do_menu_exit);
      break;

    default:
      break;
  }
}

void loop() {
  button.loop();
  activity_led.tick();
  system_led.tick();
  encoder.tick();

  /* Handle player states */
  handle_state();

  /* Update the screen */
  handle_screen();
}