// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 26 11:06:15 2018
// Host        : DESKTOP-3TOAJO0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Ivo/Desktop/Micro_5_Instructions/5_Instructions_Micro.srcs/sources_1/ip/Adder_Subtractor/Adder_Subtractor_sim_netlist.v
// Design      : Adder_Subtractor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adder_Subtractor,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Adder_Subtractor
   (A,
    B,
    ADD,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "2" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "8" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_Subtractor_c_addsub_v12_0_11 U0
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Adder_Subtractor_c_addsub_v12_0_11
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "2" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "8" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_Subtractor_c_addsub_v12_0_11_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Kjabqvl368i/tzGfJxM5ddixmzvK88/fl2ipvDc76KpWqLjkkb1k2jNgmM6i95dV9ixeMDWWaB94
hYmgmeOOZNlgkbYPIfCUfHsLcpTKaiSAmwWbISy4G9rv7cvwA3PSk6ghyIgmKCf7SQQx2pMX5ioX
XItyTME6MO+ovEAYBFeUkSzYsFpGPPhIzIcA3npBJc4EY6SDJZZgmK+SeDNly2KZJgVzuphTmi19
jgtVIsHJJnR0tkB7+ppYZNnLrZUsjafMcNaQFLucp97HgjtgcEecUgt9RQnZCtj0p8Pf76BACl3a
a9Aydwh8JidFF2s2wFwo4SYL3X58Vg1kuI7uDQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o855vNYEblEAHnTZVP+8w3rxEwclW2uO/pc4VV0nP+lbUkB3BJ8Z3vXpeddc4s3I1AmiTk4rkzev
6Oe21ZqBi8iCJrY3O1g9Tv5XsltmjrZu/zQ0/dRgNC2FdDRQtsAEDlJAn479qkUsH3C5Pe5cCLtg
0Ffl9+VRsxcSZFMZrXxGcoAYlY6fhUO5xvALshealxxR4G676v967pdsy8G3P/A9QzXbDS3EOfXA
i2MsfNPxglcZd88OkPdqYUkZRrHJTwcR9I01dBl3Bsu1afjyqtsEFBm8U1Kgou7UiKuk/xXAlBjc
cYwiTq3e2X/QreODv687oDoEtOClBGVCaxY5dw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6128)
`pragma protect data_block
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
5p05UG1yXoHp7wrknIPhnTteXdReWVnNSY91YTE=
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
