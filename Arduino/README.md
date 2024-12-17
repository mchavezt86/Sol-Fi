# Code to drive a liquid crystal (LC) cell

This .ino file have two messages embedded in arrays: "Hello world!" and "Bye, aliens!" using FSK modulation on pin 2 and 3.

The message format is as follows: SYN - STX - MSG - ETX - ETB
where
```SYN = 00010101 = 21
```STX = 00000100 = 4
```ETX = 00000101 = 5
```ETB = 00001111 = 15
