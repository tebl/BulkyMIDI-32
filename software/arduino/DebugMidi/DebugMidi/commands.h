#include <Arduino.h>

namespace mode_debugger {
  void commands_init();

  void print_help();
  void print_version();
  void print_welcome();
  void set_monitor_off();
  void set_monitor_on();

  bool handle_command(String command, String name, void (*function)());
  void select_command(String command);
  void echo_command(String command);
  void echo_unknown(String command);
}