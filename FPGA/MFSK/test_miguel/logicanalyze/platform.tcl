# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Xilinx\vitis_talia\MFSK\test_miguel\logicanalyze\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Xilinx\vitis_talia\MFSK\test_miguel\logicanalyze\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {logicanalyze}\
-hw {E:\Xilinx\vitis_talia\MFSK\logicanalyze.xsa}\
-out {E:/Xilinx/vitis_talia/MFSK/test_miguel}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {logicanalyze}
platform generate -quick
platform generate
