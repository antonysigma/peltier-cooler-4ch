#include "display.h"

#include <Adafruit_SSD1306.h>
#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>

#include "config.h"

namespace {

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

}

void
setupDisplay() {
    if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3D))
        Serial.println("Display failed");
    else {
        display.display();
        delay(2000);
        display.clearDisplay();
    }
}

void
displayTemp(const unsigned long &currentTime, const float &tempA, const int &controlPWMA,
            const float &tempB, const int &controlPWMB) {
    const unsigned long wait = 500;
    static unsigned long previousTime = millis();
    if (currentTime - previousTime < wait) return;
    previousTime = currentTime;

    display.clearDisplay();

    display.setTextSize(1);
    display.setTextColor(WHITE);
    display.setCursor(0, 0);
    display.println("Peltier controller");

    // display.setTextSize (1);
    display.print("T=  ");
    if (tempA > 0.0f) {
        display.print(tempA);
        display.print("C  ");
    } else
        display.print("ERR");

    if (tempB > 0.0f) {
        display.print(tempB);
        display.println("C");
    } else
        display.println("ERR");

    display.print("TEC=");
    display.print(controlPWMA * 100 / 255);
    display.print("%     ");
    display.print(controlPWMB * 100 / 255);
    display.println("%");

    display.setTextSize(2);
    if (digitalRead(lockLED) == HIGH) {
        display.println("LOCKED");
        digitalWrite(alarmLED, LOW);
    } else if (controlPWMA >= 254 || controlPWMB >= 254 || tempA <= 0.0f || tempB <= 0.0f) {
        digitalWrite(alarmLED, HIGH);
        display.println("ALARM");
    } else {
        digitalWrite(alarmLED, LOW);
    }

    display.display();
}
