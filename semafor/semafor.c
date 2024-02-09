#include "semafor.h"
#include "ws2812b.h"
//
//
void initialize(void) {

  const int num_leds = 192;
  const int num_steps = 256; // Number of color steps in the rainbow
  const int step_delay = 10; // Delay between steps in milliseconds

  // Loop through each LED and initialize its color with a shifted hue
  int i;
  for (i = 0; i < num_leds; i += 7) {
    // Calculate the hue for this LED based on its position
    uint8_t hue = i * 256 / num_leds;

    // Calculate the RGB color based on the hue
    uint8_t red, green, blue;
    if (hue < 85) {
      red = hue * 3;
      green = 255 - hue * 3;
      blue = 0;
    } else if (hue < 170) {
      hue -= 85;
      red = 255 - hue * 3;
      green = 0;
      blue = hue * 3;
    } else {
      hue -= 170;
      red = 0;
      green = hue * 3;
      blue = 255 - hue * 3;
    }

    // Set the LED color
    set_led(i, red, green, blue);
    set_led(i + 1, red, green, blue);

    // Send data to the LED strip
    send_data();

    // Delay before initializing the next LED
    delay_ms(step_delay);

    if (i > 185)
      i = 0;
    if (i == 184)
      break;
  }
}

void traffic_light_sequence(void) {
  int i;
  for (i = 0; i < 64; ++i) {
    set_led(i, 20, 0, 0);
  }
  send_data();
  delay_ms(5000);

  for (i = 64; i < 128; ++i) {
    set_led(i, 10, 18, 0);
  }
  send_data();
  delay_ms(2000);

  for (i = 0; i < 128; ++i) {
    set_led(i, 0, 0, 0);
  }
  for (i = 128; i < 192; ++i) {
    set_led(i, 0, 20, 0);
  }
  send_data();
  delay_ms(7000);

  int j = 0;
  for (j = 0; j < 5; ++j) {

    for (i = 128; i < 192; ++i) {
      set_led(i, 0, 20, 0);
    }
    send_data();
    delay_ms(500);

    for (i = 128; i < 192; ++i) {
      set_led(i, 0, 0, 0);
    }
    send_data();
    delay_ms(500);
  }

  for (i = 64; i < 128; ++i) {
    set_led(i, 10, 18, 0);
  }
  send_data();
  delay_ms(2000);

  for (i = 64; i < 128; ++i) {
    set_led(i, 0, 0, 0);
  }
  send_data();
}
