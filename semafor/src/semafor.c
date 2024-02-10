#include "semafor.h"
#include "ws2812b.h"
//
//
void initialize(void) {

  const int num_steps = 256; // Number of color steps in the rainbow
  const int step_delay = 10; // Delay between steps in milliseconds

  // Loop through each LED and initialize its color with a shifted hue
  int i;
  for (i = 0; i < __LED_SIZE; ++i) {
    // Calculate the hue for this LED based on its position
    uint8_t hue = i * 256 / __LED_SIZE;

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
    // set_led(i + 1, red, green, blue);

    // Send data to the LED strip
    send_data();

    // Delay before initializing the next LED
    delay_ms(step_delay);
  }

  for (i = 0; i < __LED_SIZE; ++i) {
    reset_led(i);
    send_data();
    delay_ms(step_delay);
  }
}

void traffic_light_sequence(void) {
  set_led_range(0, 64, RGB_RED);
  send_data();
  delay_ms(5000);

  set_led_range(64, 128, RGB_YELLOW);
  send_data();
  delay_ms(2000);

  set_led_range(0, 128, 0, 0, 0);
  send_data();

  set_led_range(128, 192, RGB_GREEN);
  send_data();
  delay_ms(7000);

  int i = 0;
  for (i = 0; i < 5; ++i) {
    set_led_range(128, 192, RGB_GREEN);
    send_data();
    delay_ms(500);

    set_led_range(128, 192, 0, 0, 0);
    send_data();
    delay_ms(500);
  }

  set_led_range(64, 128, RGB_YELLOW);
  send_data();
  delay_ms(2000);

  set_led_range(64, 128, 0, 0, 0);
  send_data();
}
