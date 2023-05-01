#pragma once

constexpr auto SCREEN_WIDTH = 128;  // OLED display width, in pixels
constexpr auto SCREEN_HEIGHT = 64;  // OLED display height, in pixels

constexpr int tempSenseChA = 0;
constexpr int fanPinA = 5;
constexpr int peltierPinA = 6;
constexpr int tempSenseChB = 1;
constexpr int fanPinB = 9;
constexpr int peltierPinB = 10;
constexpr int lockLED = 13;
constexpr int alarmLED = 7;
constexpr int ONE_WIRE_BUS =
    2;  // Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
constexpr int OLED_RESET = 17;  // Reset pin # (or -1 if sharing Arduino reset pin)
