# Code to drive a liquid crystal (LC) cell

This .ino file has two messages embedded in arrays: "Hello world!" and "Bye, aliens!" using 4-FSK modulation on pin 2 and pin 3.

The message format follows the format: ``SYN - STX - MSG - ETX - ETB``, where:
```
SYN = 0b00010101
STX = 0b00000100
ETX = 0b00000101
ETB = 0b00001111
```
