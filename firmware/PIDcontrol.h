#pragma once

#include <DallasTemperature.h>
#include <OneWire.h>

#include "config.h"

class PID_control
{
    float x_desired = 0.0f;         // desired output
    float x_actual[2]{0.0f, 0.0f};  // actual output

    float e = 0.0f;  // Previous error value
    float u = 0.0f;  // Previous control input

    const unsigned long sampleTime;  // Sampling interval
    unsigned long previousMillis;    // will store last time LED was updated

    const float Kp;               // Proportional gain
    const float Ki_times_DeltaT;  // Integral gain
    const float Kd_over_DeltaT;   // Derivative gain
    // const float eMax;             // Slew rate limit

    DallasTemperature *sensors;

    const int peltierPin;  // Peltier PWM output
    const int lockLED;     // PID lock indicator
    // const int alarmLED;		// PID alarm indicator
    const int fanPin;
    const int tempChannel;

    unsigned lockTimer = 0;

   public:
    PID_control (DallasTemperature * sensors, int _tempChannel,
		 int _peltierPin,
		 int lockLEDpin, int _fanPin,
		 unsigned long _sampleTime, float _Kp, float _Ti, float _Td);

  void begin ();

  void setSystemoutput (float value);
  uint8_t getSysteminput() const;
  float getSystemoutput() const;

  void update (unsigned long currentMicros);
};