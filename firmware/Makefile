ARDUINO_DIR = $(HOME)/Projects/arduino-1.8.19
#AVR_TOOLS_DIR = $(HOME)/Projects/avr-gcc-12.1.0-x64-linux

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
USER_LIB_PATH = $(mkfile_dir)/libraries
ARDUINO_LIBS = \
    OneWire \
	ds18b20 \
	SPI \
	Wire \
	Adafruit_SSD1306 \
	Adafruit_GFX \
	Adafruit_BusIO

BOARD_TAG = uno
MONITOR_PORT=/dev/ttyUSB0
OPTIMIZATION_LEVEL=3
CXXFLAGS_STD = -std=c++14 \
	-fno-threadsafe-statics \
	-flto \
	-fno-rtti \
	-fno-exceptions \
	-fno-permissive

include /usr/share/arduino/Arduino.mk
