#include "display.h"

#include "config.h"

Display::Display() : handle{SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET} {}

void
Display::setup() {
    if (!handle.begin(SSD1306_SWITCHCAPVCC, 0x3D))
        Serial.println(F("handle failed"));
    else {
        handle.display();
        delay(2000);
        handle.clearDisplay();
    }
}

void
Display::print(const unsigned long currentTime, const float tempA, const int controlPWMA,
               const float tempB, const int controlPWMB) {
    const unsigned long wait = 500;
    static unsigned long previousTime = millis();
    if (currentTime - previousTime < wait) return;
    previousTime = currentTime;

    handle.clearDisplay();

    handle.setTextSize(1);
    handle.setTextColor(WHITE);
    handle.setCursor(0, 0);
    handle.println("Peltier controller");

    // handle.setTextSize (1);
    handle.print("T=  ");
    if (tempA > 0.0f) {
        handle.print(tempA);
        handle.print("C  ");
    } else
        handle.print("ERR");

    if (tempB > 0.0f) {
        handle.print(tempB);
        handle.println("C");
    } else
        handle.println("ERR");

    handle.print("TEC=");
    handle.print(controlPWMA * 100 / 255);
    handle.print("%     ");
    handle.print(controlPWMB * 100 / 255);
    handle.println("%");

    handle.setTextSize(2);
    if (digitalRead(lockLED) == HIGH) {
        handle.println("LOCKED");
        digitalWrite(alarmLED, LOW);
    } else if (controlPWMA >= 254 || controlPWMB >= 254 || tempA <= 0.0f || tempB <= 0.0f) {
        digitalWrite(alarmLED, HIGH);
        handle.println("ALARM");
    } else {
        digitalWrite(alarmLED, LOW);
    }

    handle.display();
}
