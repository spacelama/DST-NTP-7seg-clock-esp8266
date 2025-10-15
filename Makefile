ESP_ADDR=192.168.1.94
#netclock

EXCLUDE_DIRS=Adafruit_Zero_DMA_Library|TinyWireM

#libraries/Adafruit_Zero_DMA_Library libraries/TinyWireM
#EXPAND_LIBS=1

include $(HOME)/Arduino/template/Makefile

#UPLOAD_PORT = /dev/nopnope

.DEFAULT_GOAL := ota
#.DEFAULT_GOAL := flash
