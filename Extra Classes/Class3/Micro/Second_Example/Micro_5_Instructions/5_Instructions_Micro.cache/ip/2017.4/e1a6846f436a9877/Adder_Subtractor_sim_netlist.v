// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 26 11:06:14 2018
// Host        : DESKTOP-3TOAJO0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adder_Subtractor_sim_netlist.v
// Design      : Adder_Subtractor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adder_Subtractor,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11_viv xst_addsub
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
qgpwFWOnGE5GvKgfQt5u7qaAY7pn+p+Vy/3fv3UooBT8N8aoY+anZusHq2LFo2JltnX4CvhMwrMQ
frr0Cw1DbUUkEeQ2nQ+EUnnWy7z8lAZJVNwuJY8t01gRd744XM6+yI9xAN5c7YeMdEdS7o+99O5B
Tv6DsKBoD8vuTCAY51GeAaEUFQHX7Vmw9i8RbEJ2P6IzCJBkfyfVNEap6q5ABRd7HeZH9j7yQ7GN
+mHx12b/3I3fK5W+LbWm4NQI7gMrOKfmR3biiURLIFOXp5N3wRe/0WAG0+beEWTDUYAxqaOlZiUD
S12NM2xIEVpmy9OImXjUgSrpvrvZRl1rghH8wg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sV9OunkHjaoEceLZaPehsE1BoTp9id4yu5rxGXXi/QE7NCKyfu0fPMhi7TuqRX2GU1pMaGk985dw
Ha8SEIBmRr+2ZM0i/tkCBjzeL1AUKS5LZMGTn8Nc6X0hhthChUh58EPb51WYCznuWLOIcBqNarKK
7U4FV99E+T+++aSwy7rIRMkU9YDO6dnVaR+bpASw7LjUP7MZjmcxCFfPFptexTP3EyWzGdY3zYN8
tsS39ziY/oqnRVH+6sZxN8HdFZ5yGSAxVXCorH+5yw87ZCEXXtrA1HD+9ZZVmtJQzC8hSsdz+v9O
CR9sQ1tdmVX1+YuPT2RNaGvbAH0Y4esZz6wVYQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6096)
`pragma protect data_block
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
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
