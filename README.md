# VSCode develop environment for Arduino

## Overview
This is a template for Visual Studio Code development environment for Arduino.  

## Operating environment
```shell
> arduino-cli version 
arduino-cli.exe  Version: 0.33.0 Commit: ca60d4b4 Date: 2023-05-30T12:14:01Z
> make -v   
GNU Make 4.4.1
Built for Windows32
Copyright (C) 1988-2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```

## How to Use
Compile and upload using arduino-cli. Arduino IDE installation is not required. A detailed description of arduino-cli can be found [here](https://arduino.github.io/arduino-cli).  

### Setup arduino-cli
To install the arduino-cli, run the following command:  
```shell
make setup
```
To install the `arduino:avr` platform core, run the following:  
```shell
arduino-cli core install arduino:avr
```

### Writing source code
The `setup` and `loop` functions can be written in [`main.cpp`](src/main.cpp) or in a separate file by yourself.  
You can add other c/c++ source file bellow the [src](src) folder.  
> Note: The [`src.ino`](src/src.ino) file is a dummy. It is recommended not to write anything in it.

### Compile
To compile the program, run the following command:
```shell
make
```

### Upload
First the serial port must be configured.  
To find out which serial port the Arduino is connected to, run the following command:
```shell
arduino-cli board list
```
Remember the serial port to which the Arduino is supposed to be connected.  

Write the serial port in the `PORT` of the [Makefile](Makefile) file. example:
```
PORT := COM1
```

To upload the program, run the following command:
```shell
make upload
```