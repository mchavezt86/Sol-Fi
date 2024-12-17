// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jul 16 13:37:40 2020
// Host        : LAPTOP-I0P7SRSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Talia/Vivado/Project_Solarcell/project_4/project_4.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [25:0]Q;

  wire CLK;
  wire [25:0]Q;
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
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "100101100" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1110010011100001110000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "100101100" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1110010011100001110000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "26" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_14
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
  input [25:0]L;
  output THRESH0;
  output [25:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [25:0]Q;
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
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "100101100" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1110010011100001110000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
kY/1xQto+BhD73a8Wk5C564ooGDN+/Mw5CaFehKXTVth2FOqQ8gElUsivtP5nctlpBRbYkKgmrfP
OYQno14v77pqbsAaqmvSdOVU5Gjaja568EK1VOSwK0NbvCpVg32rF6PPWiKdvyd3dpHOf4biueSS
GxCUPAcGeT6PQqJnyscV/cawD6hHTvr6cWGN65OPVAE7oySU+pV/3ZdYrEzpI9kepg/sJ5f0VwUg
oc2FtFyAQoztu2kcOK03jeghCSGO3embzwy0qDS1tDgBfK9HXwaDyvrpzfDMUQ2cMSfmoXDco0gb
37mo+I1mtqfQqWSBNCtXvUZ7Mw2XiqHy86GGaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aJv+VKmzFI4Ho4B+jaC4Bz6b7IreY5Bv+HOfaCEGYnG8BDXvsqGDvFwLEObKtB8CnyLVrMEVaRwA
pE7oojfBZKpfOiEdUBzTjnYpEckNLsE663q1MKejnrQe1AMzXNiIRH0qqMS78qU0cmjAQNmymIRy
SC8/z5u4e7NzvLBrJc3DeTOMNpL0Vvurugizdc7cd6ruSM/RIkW48INyRCkYExqXh9gF057VJVSY
MbG+O5LNlIUiZEdeOnzuWseFcUwYPnkVLztpEUaV5kR3cl7bpiiTgvtuDfb2SMNzJDm6iXvF3/sh
nlM+yZX9BogjhX504BH3xEiZOxqq4dw9ZnHSKQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17696)
`pragma protect data_block
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
vld+u8TZn69/65DSQHB9PqjXawBD/0Ohmto=
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
