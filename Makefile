PORT := COM3
BOARD := arduino:avr:uno

AC := arduino-cli
AFLAGS := --fqbn
SRC := src

ifeq ($(OS), Windows_NT)
    SETUP_SC := powershell -ExecutionPolicy Bypass .\setup-arduino-cli
else
    SETUP_SC := ./setup-arduino-cli.sh
endif

all: compile

compile: $(SRC)/$(SRC).ino
	$(AC) compile $(AFLAGS) $(BOARD) $(SRC)

upload: $(SRC)/$(SRC).ino
	$(AC) upload $(AFLAGS) $(BOARD) -p $(PORT) $(SRC)

setup:
	$(SETUP_SC)

clean:
	rm -f *.o main

.PHONY: clean