// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul 15 13:50:58 2020
// Host        : LAPTOP-I0P7SRSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Talia/Vivado/Project_Solarcell/project_4/project_4.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [21:0]Q;

  wire CLK;
  wire [21:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "22" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "22" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [21:0]L;
  output THRESH0;
  output [21:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [21:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "22" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D/Kd/L+y0RMtuF4ZsLC5kuXcgqh/6TS5GMdldpyKq8X1Jeqrd5Fi3pGgSQYDiiW7d+CjTVmmY4ta
ZkyVXFuwDgomodQQZeYE7Fflhkz3HWL4/eAGIw6Nb4nC2GbDA+pzwEHDpErZKAIDPNK8wmYY8Ipy
1se92zF0whM5fAz9iJheJSwgXCxvHdzn2J9oM+j/EW28rxHGOh7RDJa73sVRJ8Avuisca/lTrDwp
p67qepcqCwYTDt/d2Fo4VLBWXsUGqCIy7mdCG5bLRlWpDT2PjMP4Ow4ysFi9VJPHjZXG8wyG8WpY
QCvC2Dy1oel2hgF7XVZBmpj+DzO32hEBVh23pQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OtKVg0CBEshjGj/u4ngVSeA16kH2A0vNhX44ksF41jFc2+9mV82qnu9QKDwN72HBXz5OJ9Q9aG/K
hE60Y6+0JaZkY6BcGMve5a3kTvYeFqGErY0tJ4HzeupY2fdmUWy2g7f93CBJ1huihhHFmV+bZMGY
akQhesaBIeGAmogVnmAr4/kW2soF9TW+5N2Djuexg1309bQFYEwfjXOzcKBgZjF0FFHUgykUgGR+
jXPyIXJRmn4UWCdV3XZzw2hkyNYcJBsKtZDpkNIwoNf9QS6xCLM9Sh2zeQ49NEmmhNAv9RoP0kCX
Qy/tmYKiPrtQVgJH+2NYm8YyTtLO8BH1OU532Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13424)
`pragma protect data_block
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
3s/74idx/J+wo+pnea1sNzlUk4Armp9RMpxUKkE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
