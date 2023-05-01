#pragma once

void setupDisplay();

void displayTemp(const unsigned long &currentTime, const float &tempA, const int &controlPWMA,
                 const float &tempB, const int &controlPWMB);