#include <Arduino.h>

#include "PIDcontrol.h"
#include "config.h"
#include "display.h"

namespace {

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas
// temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature.
DallasTemperature sensors(&oneWire);

constexpr float Kp = -50.0f;
constexpr float Ti = 2.5f;  // Integral gain bandwidth in second
constexpr float Td = 0.0f;
constexpr unsigned long PID_sampleMillis = 100;
PID_control peltierA(&sensors, tempSenseChA, peltierPinA, lockLED, fanPinA, PID_sampleMillis, Kp,
                     Ti, Td);
PID_control peltierB(&sensors, tempSenseChB, peltierPinB, lockLED, fanPinB, PID_sampleMillis, Kp,
                     Ti, Td);

Display display;

/*
 * The setup function. We only start the sensors here
 */
inline void
_setup() {
    // Set pins at 980Hz
    TCCR2A = _BV(COM2A1) | _BV(COM2B1) | _BV(WGM21) | _BV(WGM20);
    TCCR2B = _BV(CS22);

    // Start up the library
    sensors.begin();

    const float targetTempC = 30.0f;
    peltierA.setSystemoutput(targetTempC);
    peltierB.setSystemoutput(targetTempC);

    peltierA.begin();
    peltierB.begin();

    pinMode(lockLED, OUTPUT);
    pinMode(alarmLED, OUTPUT);
    digitalWrite(lockLED, LOW);
    digitalWrite(alarmLED, LOW);

    // start serial port
    Serial.begin(9600);
    Serial.println("Dallas Temperature IC Control Library Demo");

    display.setup();
}

/*
 * Main function, get and show the temperature
 */
inline void
_loop() {
    unsigned long currentTime = millis();

    peltierA.update(currentTime);
    peltierB.update(currentTime);
    display.print(currentTime, peltierA.getSystemoutput(), peltierA.getSysteminput(),
                  peltierB.getSystemoutput(), peltierB.getSysteminput());
}

}  // namespace

int
main() {
    _setup();

    for (;;) {
        _loop();
    }
}
