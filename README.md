# DST-NTP-7seg-clock-esp8266
A 7 segment automatically DST clock, keeping sync with network clock

# Dependencies:

Compile on the commandline with https://github.com/plerup/makeEspArduino.git Currently works only up until commit fb748959db7b69f9353b6c052d0471d730cd6830 (HEAD, tag: 5.4.3), because of bug plerup/makeEspArduino#155

Fire up an Arduino GUI and install these libraries:
 - Adafruit GFX Library
 - RTClib
 - Adafruit_LED_Backpack

Some common routines, makefile templates and syslog calls that all of my esp8266/32 devices use:
 - https://github.com/spacelama/template
 - https://github.com/spacelama/Syslog

Install those in the parent directory to where you've downloaded this.

# Configure:
Configure the variables in ../template/Makefile per the template there in Makefile.customise-and-move-to-Makefile

# Install:
Perhaps change the UPLOAD_PORT and .DEFAULT_GOAL in Makefile

run `make`

You'll probably need `.DEFAULT_GOAL := flash` with `UPLOAD_PORT := /dev/ttyUSB???` initally until you have a valid image on your device.  Then if you've configured variables correctly and you can talk to the device on the network, you can revert thereon back to `.DEFALT_GOAL := ota`
