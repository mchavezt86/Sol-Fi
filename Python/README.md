# Python code for Sol-Fi

The code for decoding messages received using 4-FSK for the Sol-Fi system. In its current shape, the code requires the output file of the **Saleae Logic Analyzer** (we use the Saleae Logic Pro 8).

The code runs from ``main.py`` if the output is in one channel of the output file, which must be in the ``.mat`` format from Matlab. If the output is in two channels, which means the colour-multiplexing is in place, the code to run is ``main-2ch.py``. 

Each Python code shows the structure of the file name, which can be overwritten. The file name carries information regarding the type of modulator:
* LC
* DMD

Each uses a different frequency of operation and SNR threshold (for each frequency). The latter parameter can be found in the files ``mfskProcessAuto.py`` and ``mfskProcessAuto2ch.py``. These codes output files in ``.mat`` format with the decoded information, which can be verified manually.

To easily verify, the codes ``verify.py`` and ``verify-2ch.py`` process the output files against the original messages: _Hello world!_ or _Bye, aliens!_.
