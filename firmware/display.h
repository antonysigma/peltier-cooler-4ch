#pragma once

#include <Adafruit_SSD1306.h>
#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>

class Display {
    Adafruit_SSD1306 handle;

    void printFloat(const float);

   public:
    Display();
    Display(const Display &) = delete;
    Display(Display &&) = delete;

    void setup();
    void print(const unsigned long currentTime, const float tempA, const int controlPWMA,
               const float tempB, const int controlPWMB);
};