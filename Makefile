AC = arduino-cli
AFLAGS = --fqbn
BOARD = arduino:avr:uno
PORT = /dev/ttyUSB0
MODULES = src

all: compile

compile: $(MODULES)/src.ino
	$(AC) compile $(AFLAGS) $(BOARD) $(MODULES)

upload: $(MODULES)/src.ino
	$(AC) upload $(AFLAGS) $(BOARD) -p $(PORT) $(MODULES)

setup:
	./setup-arduino-cli.ps1

clean:
	rm -f *.o main

.PHONY: clean