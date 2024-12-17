# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\Xilinx\vitis_talia\MFSK\test_miguel\test_system\_ide\scripts\debugger_test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\Xilinx\vitis_talia\MFSK\test_miguel\test_system\_ide\scripts\debugger_test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-35T 210319AB51BDA" && level==0 && jtag_device_ctx=="jsn-Arty A7-35T-210319AB51BDA-0362d093-0"}
fpga -file E:/Xilinx/vitis_talia/MFSK/test_miguel/test/_ide/bitstream/logicanalyze.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw E:/Xilinx/vitis_talia/MFSK/test_miguel/logicanalyze/export/logicanalyze/hw/logicanalyze.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow E:/Xilinx/vitis_talia/MFSK/test_miguel/test/Debug/test.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
