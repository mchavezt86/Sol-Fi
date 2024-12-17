# Code for the FPGA

The code in this section is for controlling the DMD using the [Arty A7 Dev Board](https://www.xilinx.com/products/boards-and-kits/1-w51quh.html), which uses the Artix 7 FPGA, to signal the custom-made DMD board.
Regarding the hardware implementation, refer to [this paper](https://www.usenix.org/conference/nsdi22/presentation/xu-talia).

The files contain the message:
* ``MFSK/test_miguel/test/src/testperiph.c`` to send _Hello world!_.
* ``MFSK/test_miguel/test_bye/src/testperiph.c`` to send _Bye, aliens!_.

Each project should run on the corresponding board to control the DMD of each channel, if using colour-multiplexing.
