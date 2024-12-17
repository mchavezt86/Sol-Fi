# Python code for Sol-Fi

The code for decoding messages received using 4-FSK for the Sol-Fi system. In its current shape, the code requires the output file of the **Saleae Logic Analyzer** (we use the Saleae Logic Pro 8).

The code runs from ``main.py`` if the output is in one channel of the output file, which must be in the ``.mat`` format from Matlab. If the output is in two channels, which means the colour-multiplexing is in place, the code to run is ``main-2ch.py``. 

Each Python code shows the structure of the file name, which can be overwritten.
