
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:062default:default2
1250.6992default:default2
8.4302default:defaultZ17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
E:/Xilinx/Vivado/2021.2/data/ip2default:defaultZ19-2313h px� 
�
�One or more IPs have been locked in the design '%s'. Please run report_ip_status for more details and recommendations on how to fix this issue.
List of locked IPs:
%s
766*rsb2
design_1.bd2default:default2�
�design_1_microblaze_0_0
design_1_microblaze_0_axi_periph_0
design_1_dlmb_v10_0
design_1_dlmb_bram_if_cntlr_0
design_1_ilmb_v10_0
design_1_ilmb_bram_if_cntlr_0
design_1_mdm_1_0
design_1_lmb_bram_0
design_1_axi_gpio_0_0
design_1_system_ila_0_0
2default:defaultZ41-1661h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:082default:default2
00:00:082default:default2
1250.6992default:default2
0.0002default:defaultZ17-268h px� 
y
Command: %s
53*	vivadotcl2H
4synth_design -top logicanalyze -part xc7a35tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
IP '%s' is locked:
%s
1260*coregen2
ila_02default:default2�
�* IP definition 'ILA (Integrated Logic Analyzer) (6.2)' for IP 'ila_0' (customized with software release 2019.2) has a different revision in the IP Catalog.2default:defaultZ19-2162h px�
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcsg324-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
176322default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1250.699 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2 
logicanalyze2default:default2
 2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
1462default:default8@Z8-155h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
next_msg2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
2722default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
next_msg2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
2742default:default8@Z8-6090h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2x
bE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2x
bE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
4202default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
ila_02default:default2
 2default:default2t
^E:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/ila_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ila_02default:default2
 2default:default2
22default:default2
12default:default2t
^E:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/ila_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
probe02default:default2
82default:default2
ila_02default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
4222default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2$
design_1_wrapper2default:default2
 2default:default2f
PE:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_12default:default2
 2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
132default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_0_02default:default2
 2default:default2�
nE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_0_02default:default2
 2default:default2
32default:default2
12default:default2�
nE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
design_1_mdm_1_02default:default2
 2default:default2
iE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_mdm_1_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
design_1_mdm_1_02default:default2
 2default:default2
42default:default2
12default:default2
iE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_mdm_1_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_microblaze_0_02default:default2
 2default:default2�
pE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_microblaze_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_microblaze_0_02default:default2
 2default:default2
52default:default2
12default:default2�
pE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_microblaze_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
Interrupt_Ack2default:default2+
design_1_microblaze_0_02default:default2 
microblaze_02default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
1372default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
microblaze_02default:default2+
design_1_microblaze_0_02default:default2
522default:default2
512default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
1372default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys26
"design_1_microblaze_0_axi_periph_02default:default2
 2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2902default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
s00_couplers_imp_1RZP34U2default:default2
 2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7442default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s00_couplers_imp_1RZP34U2default:default2
 2default:default2
62default:default2
12default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"design_1_microblaze_0_axi_periph_02default:default2
 2default:default2
72default:default2
12default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2902default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys29
%microblaze_0_local_memory_imp_1K0VQXK2default:default2
 2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5102default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys21
design_1_dlmb_bram_if_cntlr_02default:default2
 2default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_dlmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_dlmb_bram_if_cntlr_02default:default2
 2default:default2
82default:default2
12default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_dlmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2'
design_1_dlmb_v10_02default:default2
 2default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_dlmb_v10_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
design_1_dlmb_v10_02default:default2
 2default:default2
92default:default2
12default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_dlmb_v10_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
LMB_Rst2default:default2'
design_1_dlmb_v10_02default:default2
dlmb_v102default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6562default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
dlmb_v102default:default2'
design_1_dlmb_v10_02default:default2
252default:default2
242default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6562default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys21
design_1_ilmb_bram_if_cntlr_02default:default2
 2default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_ilmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_ilmb_bram_if_cntlr_02default:default2
 2default:default2
102default:default2
12default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_ilmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2'
design_1_ilmb_v10_02default:default2
 2default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_ilmb_v10_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
design_1_ilmb_v10_02default:default2
 2default:default2
112default:default2
12default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_ilmb_v10_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
LMB_Rst2default:default2'
design_1_ilmb_v10_02default:default2
ilmb_v102default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7022default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
ilmb_v102default:default2'
design_1_ilmb_v10_02default:default2
252default:default2
242default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7022default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2'
design_1_lmb_bram_02default:default2
 2default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_lmb_bram_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
design_1_lmb_bram_02default:default2
 2default:default2
122default:default2
12default:default2�
lE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_lmb_bram_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2'
design_1_lmb_bram_02default:default2
lmb_bram2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7272default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2'
design_1_lmb_bram_02default:default2
lmb_bram2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7272default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
lmb_bram2default:default2'
design_1_lmb_bram_02default:default2
162default:default2
142default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
7272default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%microblaze_0_local_memory_imp_1K0VQXK2default:default2
 2default:default2
132default:default2
12default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
design_1_rst_clk_wiz_1_100M_02default:default2
 2default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_rst_clk_wiz_1_100M_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
design_1_rst_clk_wiz_1_100M_02default:default2
 2default:default2
142default:default2
12default:default2�
vE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_rst_clk_wiz_1_100M_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default21
design_1_rst_clk_wiz_1_100M_02default:default2&
rst_clk_wiz_1_100M2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2562default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default21
design_1_rst_clk_wiz_1_100M_02default:default2&
rst_clk_wiz_1_100M2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2562default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2&
rst_clk_wiz_1_100M2default:default21
design_1_rst_clk_wiz_1_100M_02default:default2
102default:default2
82default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2562default:default8@Z8-7023h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2652default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_system_ila_0_02default:default2
 2default:default2�
pE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_system_ila_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_system_ila_0_02default:default2
 2default:default2
152default:default2
12default:default2�
pE:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/.Xil/Vivado-18008-TUD258009/realtime/design_1_system_ila_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2

axi_gpio_02default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
1022default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2 
system_ila_02default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
2652default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2+
microblaze_0_axi_periph2default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
1892default:default8@Z8-6071h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_12default:default2
 2default:default2
162default:default2
12default:default2`
Je:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
132default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
design_1_wrapper2default:default2
 2default:default2
172default:default2
12default:default2f
PE:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
122default:default8@Z8-6155h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
d02default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
4252default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
lb2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
4202default:default8@Z8-6071h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
start_signal_1_reg2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
2082default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
start_signal_2_reg2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
2092default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
start_signal_reg2default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
2102default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
logicanalyze2default:default2
 2default:default2
182default:default2
12default:default2_
IE:/Xilinx/vitis_talia/MFSK/MFSK.srcs/sources_1/imports/new/logicanalyze.v2default:default2
232default:default8@Z8-6155h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[7]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[5]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[4]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[3]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[0]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[7]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[5]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[4]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[3]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[0]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[6]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[5]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[4]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[3]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[2]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[1]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[0]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[6]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[5]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[4]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[3]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[2]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[1]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[0]2default:default2
12default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s00_couplers_imp_1RZP34U2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s00_couplers_imp_1RZP34U2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
s00_couplers_imp_1RZP34U2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
s00_couplers_imp_1RZP34U2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[1]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[0]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1250.699 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1250.699 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1250.699 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0862default:default2
1250.6992default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0/design_1_microblaze_0_0_in_context.xdc2default:default20
d0/design_1_i/microblaze_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0/design_1_microblaze_0_0_in_context.xdc2default:default20
d0/design_1_i/microblaze_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0/design_1_dlmb_v10_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/dlmb_v10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0/design_1_dlmb_v10_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/dlmb_v10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0/design_1_dlmb_v10_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/ilmb_v10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0/design_1_dlmb_v10_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/ilmb_v10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2P
:d0/design_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2P
:d0/design_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_in_context.xdc2default:default2P
:d0/design_1_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_in_context.xdc2default:default2P
:d0/design_1_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0/design_1_lmb_bram_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/lmb_bram	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0/design_1_lmb_bram_0_in_context.xdc2default:default2F
0d0/design_1_i/microblaze_0_local_memory/lmb_bram	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
~e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0/design_1_mdm_1_0_in_context.xdc2default:default2)
d0/design_1_i/mdm_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
~e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0/design_1_mdm_1_0_in_context.xdc2default:default2)
d0/design_1_i/mdm_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_in_context.xdc2default:default26
 d0/design_1_i/rst_clk_wiz_1_100M	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_in_context.xdc2default:default26
 d0/design_1_i/rst_clk_wiz_1_100M	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_in_context.xdc2default:default2.
d0/design_1_i/axi_gpio_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_in_context.xdc2default:default2.
d0/design_1_i/axi_gpio_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0/design_1_system_ila_0_0_in_context.xdc2default:default20
d0/design_1_i/system_ila_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0/design_1_system_ila_0_0_in_context.xdc2default:default20
d0/design_1_i/system_ila_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2g
Qe:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2
lb	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2g
Qe:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2
lb	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2s
]e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
wiz	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2s
]e:/Xilinx/vitis_talia/MFSK/MFSK.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
wiz	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2u
_E:/Xilinx/vitis_talia/MFSK/MFSK.srcs/constrs_1/imports/DLP2000_Controller/Arty-A7-35-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2u
_E:/Xilinx/vitis_talia/MFSK/MFSK.srcs/constrs_1/imports/DLP2000_Controller/Arty-A7-35-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2s
_E:/Xilinx/vitis_talia/MFSK/MFSK.srcs/constrs_1/imports/DLP2000_Controller/Arty-A7-35-Master.xdc2default:default22
.Xil/logicanalyze_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2Q
;E:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2Q
;E:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1293.7732default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1293.7732default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2D
0d0/design_1_i/microblaze_0_local_memory/lmb_bram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   28 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 23    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[7]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[5]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[4]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[3]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
ja[0]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[7]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[5]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[4]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[3]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jb[0]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[6]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[5]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[4]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[3]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[2]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[1]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jc[0]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[6]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[5]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[4]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[3]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[2]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[1]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
logicanalyze2default:default2
jd[0]2default:default2
12default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default26
"design_1_microblaze_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[1]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[0]2default:default2 
logicanalyze2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:42 . Memory (MB): peak = 1298.754 ; gain = 48.055
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
_
%s
*synth2G
3+------+------------------------------+----------+
2default:defaulth p
x
� 
_
%s
*synth2G
3|      |BlackBox name                 |Instances |
2default:defaulth p
x
� 
_
%s
*synth2G
3+------+------------------------------+----------+
2default:defaulth p
x
� 
_
%s
*synth2G
3|1     |design_1_axi_gpio_0_0         |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|2     |design_1_mdm_1_0              |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|3     |design_1_microblaze_0_0       |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|4     |design_1_rst_clk_wiz_1_100M_0 |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|5     |design_1_system_ila_0_0       |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|6     |design_1_dlmb_bram_if_cntlr_0 |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|7     |design_1_dlmb_v10_0           |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|8     |design_1_ilmb_bram_if_cntlr_0 |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|9     |design_1_ilmb_v10_0           |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|10    |design_1_lmb_bram_0           |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|11    |clk_wiz_0                     |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3|12    |ila_0                         |         1|
2default:defaulth p
x
� 
_
%s
*synth2G
3+------+------------------------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
Y
%s*synth2A
-+------+----------------------------+------+
2default:defaulth px� 
Y
%s*synth2A
-|      |Cell                        |Count |
2default:defaulth px� 
Y
%s*synth2A
-+------+----------------------------+------+
2default:defaulth px� 
Y
%s*synth2A
-|1     |clk_wiz                     |     1|
2default:defaulth px� 
Y
%s*synth2A
-|2     |design_1_axi_gpio_0         |     1|
2default:defaulth px� 
Y
%s*synth2A
-|3     |design_1_dlmb_bram_if_cntlr |     1|
2default:defaulth px� 
Y
%s*synth2A
-|4     |design_1_dlmb_v10           |     1|
2default:defaulth px� 
Y
%s*synth2A
-|5     |design_1_ilmb_bram_if_cntlr |     1|
2default:defaulth px� 
Y
%s*synth2A
-|6     |design_1_ilmb_v10           |     1|
2default:defaulth px� 
Y
%s*synth2A
-|7     |design_1_lmb_bram           |     1|
2default:defaulth px� 
Y
%s*synth2A
-|8     |design_1_mdm_1              |     1|
2default:defaulth px� 
Y
%s*synth2A
-|9     |design_1_microblaze_0       |     1|
2default:defaulth px� 
Y
%s*synth2A
-|10    |design_1_rst_clk_wiz_1_100M |     1|
2default:defaulth px� 
Y
%s*synth2A
-|11    |design_1_system_ila_0       |     1|
2default:defaulth px� 
Y
%s*synth2A
-|12    |ila                         |     1|
2default:defaulth px� 
Y
%s*synth2A
-|13    |CARRY4                      |    21|
2default:defaulth px� 
Y
%s*synth2A
-|14    |LUT1                        |     7|
2default:defaulth px� 
Y
%s*synth2A
-|15    |LUT2                        |    21|
2default:defaulth px� 
Y
%s*synth2A
-|16    |LUT3                        |    32|
2default:defaulth px� 
Y
%s*synth2A
-|17    |LUT4                        |   101|
2default:defaulth px� 
Y
%s*synth2A
-|18    |LUT5                        |    24|
2default:defaulth px� 
Y
%s*synth2A
-|19    |LUT6                        |    33|
2default:defaulth px� 
Y
%s*synth2A
-|20    |FDRE                        |   178|
2default:defaulth px� 
Y
%s*synth2A
-|21    |FDSE                        |    18|
2default:defaulth px� 
Y
%s*synth2A
-|22    |IBUF                        |     3|
2default:defaulth px� 
Y
%s*synth2A
-|23    |OBUF                        |    50|
2default:defaulth px� 
Y
%s*synth2A
-+------+----------------------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 42 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:46 . Memory (MB): peak = 1306.152 ; gain = 7.398
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:47 ; elapsed = 00:00:51 . Memory (MB): peak = 1306.152 ; gain = 55.453
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0362default:default2
1315.0272default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
212default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1321.6802default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
ae9a414f2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
1072default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:542default:default2
00:00:592default:default2
1321.6802default:default2
70.9802default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Q
=E:/Xilinx/vitis_talia/MFSK/MFSK.runs/synth_1/logicanalyze.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
nExecuting : report_utilization -file logicanalyze_utilization_synth.rpt -pb logicanalyze_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed May 18 15:35:32 20222default:defaultZ17-206h px� 


End Record