#include <Arduino.h>
#include "PIDcontrol.h"
//#define __PID_INVERTED_OUTPUT__ // Cooling element

const uint16_t systemInputmax = 255;
const uint16_t systemInputdefault = 0;

PID_control::PID_control(DallasTemperature* _sensors, int _tempChannel, int _peltierPin,
                         int _lockLEDPin, int _fanPin, unsigned long _sampleTime, float _Kp,
                         float _Ti, float _Td)
    : u{systemInputdefault},
      sampleTime(_sampleTime),
      previousMillis{millis()},
// TODO: option to invert the system input
#ifdef __PID_INVERTED_OUTPUT__
      Kp(-_Kp),
      Ki_times_DeltaT(_Kp / _Ti * -1e-3f * _sampleTime),
      Kd_over_DeltaT(_Kp * _Td * -1e3f / _sampleTime),
#else
      Kp(_Kp),
      Ki_times_DeltaT(_Kp / _Ti * 1e-3f * _sampleTime),
      Kd_over_DeltaT(_Kp * _Td * 1e3f / _sampleTime),
//eMax (slewRatelimit * _sampleTime * 1e-6f),
#endif
      sensors(_sensors),
      tempChannel(_tempChannel),
      peltierPin(_peltierPin),
      lockLED(_lockLEDPin),
      fanPin(_fanPin) {
  // Default low
  pinMode (peltierPin, OUTPUT);
  pinMode (fanPin, OUTPUT);
  digitalWrite(fanPin, LOW);

  previousMillis = millis ();
}

void
PID_control::begin ()
{
  analogWrite (peltierPin, 0);
}

void
PID_control::setSystemoutput (float value)
{
  x_desired = value;
}

uint8_t
PID_control::getSysteminput() const {
    return u;
}

float
PID_control::getSystemoutput() const {
    return x_actual[0];
}

void
PID_control::update (unsigned long currentMillis)
{
  if (currentMillis - previousMillis < sampleTime)
    return;

  previousMillis = currentMillis;

  // TODO: multiple sensor values
  sensors->requestTemperatures ();	// Send the command to get temperatures
  const float new_x_actual = sensors->getTempCByIndex(tempChannel);

  const float new_e = x_desired - new_x_actual;

  // Indicate lock status when temperature is within +/- 1.0C
  const bool lock_flag = (new_e <= 1 && new_e >= -1);

  // Apply PI gain
  auto& new_u = u;

  new_u += Kp * (new_e - e);
  new_u += Ki_times_DeltaT * new_e;

  // Apply D gain based on system output only
  new_u += Kd_over_DeltaT * (new_x_actual - x_actual[0] * 2 + x_actual[1]);

  // Prevent integral windup
  // Cooling only: shutdown TEC if cold side temperature is lower than set point by 5 degC
  if (new_u < 0 || new_e > 2)
    {
      new_u = 0;
      digitalWrite(fanPin, LOW);
    }
  // Show alarm when system input limit is reached
  else if (new_u > systemInputmax)
      new_u = systemInputmax;
  // Temperature cannot be lower than freezing point
  else if (new_x_actual < 0)
      new_u = 0;
  
  if (new_u > 100) // Avoid interrupting the fan
      digitalWrite(fanPin, HIGH);
  else if (new_u > 30)
      analogWrite (fanPin, 64);

  // Apply system input.
  analogWrite (peltierPin, int(new_u));

  // Update state variables
  x_actual[1] = x_actual[0];
  x_actual[0] = new_x_actual;
  e = new_e;

  // Show lock signal
  // Debounce switch: change state only after 5 seconds
  // TODO(Antony): decouple PID state change (aka the event) from the system response.
  if (lock_flag && lockTimer > 5000)
    digitalWrite (lockLED, HIGH);
  else if (!lock_flag)
    {
      lockTimer = 0;
      digitalWrite (lockLED, LOW);
    }
  else
    lockTimer += sampleTime;

}
