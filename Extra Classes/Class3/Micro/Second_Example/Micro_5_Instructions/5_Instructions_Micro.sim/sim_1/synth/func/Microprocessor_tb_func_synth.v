// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Tue Feb 28 23:10:25 2017
// Host        : archlinux running 64-bit unknown
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.sim/sim_1/synth/func/Microprocessor_tb_func_synth.v
// Design      : Microprocessor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adder_Subtractor,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
module Adder_Subtractor
   (A,
    B,
    ADD,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [7:0]S;

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
  Adder_Subtractor_c_addsub_v12_0_10 U0
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

module Datapath
   (clock_IBUF_BUFG,
    reset_IBUF);
  input clock_IBUF_BUFG;
  input reset_IBUF;

  wire [7:0]ALU_Out;
  wire ALU_i_10_n_0;
  wire ALU_i_11_n_0;
  wire ALU_i_12_n_0;
  wire ALU_i_13_n_0;
  wire ALU_i_14_n_0;
  wire ALU_i_15_n_0;
  wire ALU_i_16_n_0;
  wire ALU_i_17_n_0;
  wire ALU_i_18_n_0;
  wire ALU_i_19_n_0;
  wire ALU_i_20_n_0;
  wire ALU_i_21_n_0;
  wire ALU_i_22_n_0;
  wire ALU_i_23_n_0;
  wire ALU_i_24_n_0;
  wire ALU_i_25_n_0;
  wire ALU_i_9_n_0;
  wire Data_Memory_i_10_n_0;
  wire Data_Memory_i_11_n_0;
  wire Data_Memory_i_12_n_0;
  wire Data_Memory_i_13_n_0;
  wire Data_Memory_i_14_n_0;
  wire Data_Memory_i_15_n_0;
  wire Data_Memory_i_16_n_0;
  wire Data_Memory_i_17_n_0;
  wire Data_Memory_i_18_n_0;
  wire Data_Memory_i_20_n_0;
  wire Data_Memory_i_22_n_0;
  wire Data_Memory_i_23_n_0;
  wire Data_Memory_i_24_n_0;
  wire Data_Memory_i_25_n_0;
  wire Data_Memory_i_26_n_0;
  wire Data_Memory_i_27_n_0;
  wire Data_Memory_i_28_n_0;
  wire Data_Memory_i_29_n_0;
  wire Data_Memory_i_2_n_0;
  wire Data_Memory_i_30_n_0;
  wire Data_Memory_i_31_n_0;
  wire Data_Memory_i_32_n_0;
  wire Data_Memory_i_33_n_0;
  wire Data_Memory_i_34_n_0;
  wire Data_Memory_i_35_n_0;
  wire Data_Memory_i_36_n_0;
  wire Data_Memory_i_37_n_0;
  wire Data_Memory_i_38_n_0;
  wire Data_Memory_i_39_n_0;
  wire Data_Memory_i_3_n_0;
  wire Data_Memory_i_40_n_0;
  wire Data_Memory_i_41_n_0;
  wire Data_Memory_i_42_n_0;
  wire Data_Memory_i_43_n_0;
  wire Data_Memory_i_44_n_0;
  wire Data_Memory_i_45_n_0;
  wire Data_Memory_i_46_n_0;
  wire Data_Memory_i_47_n_0;
  wire Data_Memory_i_48_n_0;
  wire Data_Memory_i_49_n_0;
  wire Data_Memory_i_4_n_0;
  wire Data_Memory_i_50_n_0;
  wire Data_Memory_i_5_n_0;
  wire Data_Memory_i_6_n_0;
  wire Data_Memory_i_7_n_0;
  wire Data_Memory_i_8_n_0;
  wire Data_Memory_i_9_n_0;
  wire [7:0]Data_Out;
  wire \PC[0]_i_1_n_0 ;
  wire \PC[1]_i_1_n_0 ;
  wire \PC[2]_i_1_n_0 ;
  wire [2:0]PC_reg__0;
  wire [7:0]Register_File;
  wire \Register_File[1][7]_i_1_n_0 ;
  wire \Register_File[2][7]_i_1_n_0 ;
  wire \Register_File[6][7]_i_1_n_0 ;
  wire \Register_File[7][0]_i_1_n_0 ;
  wire \Register_File[7][1]_i_1_n_0 ;
  wire \Register_File[7][2]_i_1_n_0 ;
  wire \Register_File[7][3]_i_1_n_0 ;
  wire \Register_File[7][4]_i_1_n_0 ;
  wire \Register_File[7][5]_i_1_n_0 ;
  wire \Register_File[7][6]_i_1_n_0 ;
  wire \Register_File[7][7]_i_1_n_0 ;
  wire \Register_File[7][7]_i_2_n_0 ;
  wire [7:0]\Register_File_reg[0] ;
  wire [7:0]\Register_File_reg[1] ;
  wire [7:0]\Register_File_reg[2] ;
  wire [7:0]\Register_File_reg[3] ;
  wire [7:0]\Register_File_reg[4] ;
  wire [7:0]\Register_File_reg[5] ;
  wire [7:0]\Register_File_reg[6] ;
  wire [7:0]\Register_File_reg[7] ;
  wire Second_Cycle;
  wire Second_Cycle_i_1_n_0;
  wire Write_Enable;
  wire clock_IBUF_BUFG;
  wire [0:0]p_1_in;
  wire reset_IBUF;
  wire [2:1]sel0;

  (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
  Adder_Subtractor ALU
       (.A({Data_Memory_i_9_n_0,Data_Memory_i_10_n_0,Data_Memory_i_11_n_0,Data_Memory_i_12_n_0,Data_Memory_i_13_n_0,Data_Memory_i_14_n_0,Data_Memory_i_15_n_0,Data_Memory_i_16_n_0}),
        .ADD(ALU_i_9_n_0),
        .B(Register_File),
        .S(ALU_Out));
  MUXF7 ALU_i_1
       (.I0(ALU_i_10_n_0),
        .I1(ALU_i_11_n_0),
        .O(Register_File[7]),
        .S(Data_Memory_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_10
       (.I0(\Register_File_reg[3] [7]),
        .I1(\Register_File_reg[2] [7]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [7]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [7]),
        .O(ALU_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_11
       (.I0(\Register_File_reg[7] [7]),
        .I1(\Register_File_reg[6] [7]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [7]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [7]),
        .O(ALU_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_12
       (.I0(\Register_File_reg[3] [6]),
        .I1(\Register_File_reg[2] [6]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [6]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [6]),
        .O(ALU_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_13
       (.I0(\Register_File_reg[7] [6]),
        .I1(\Register_File_reg[6] [6]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [6]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [6]),
        .O(ALU_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_14
       (.I0(\Register_File_reg[3] [5]),
        .I1(\Register_File_reg[2] [5]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [5]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [5]),
        .O(ALU_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_15
       (.I0(\Register_File_reg[7] [5]),
        .I1(\Register_File_reg[6] [5]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [5]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [5]),
        .O(ALU_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_16
       (.I0(\Register_File_reg[3] [4]),
        .I1(\Register_File_reg[2] [4]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [4]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [4]),
        .O(ALU_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_17
       (.I0(\Register_File_reg[7] [4]),
        .I1(\Register_File_reg[6] [4]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [4]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [4]),
        .O(ALU_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_18
       (.I0(\Register_File_reg[3] [3]),
        .I1(\Register_File_reg[2] [3]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [3]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [3]),
        .O(ALU_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_19
       (.I0(\Register_File_reg[7] [3]),
        .I1(\Register_File_reg[6] [3]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [3]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [3]),
        .O(ALU_i_19_n_0));
  MUXF7 ALU_i_2
       (.I0(ALU_i_12_n_0),
        .I1(ALU_i_13_n_0),
        .O(Register_File[6]),
        .S(Data_Memory_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_20
       (.I0(\Register_File_reg[3] [2]),
        .I1(\Register_File_reg[2] [2]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [2]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [2]),
        .O(ALU_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_21
       (.I0(\Register_File_reg[7] [2]),
        .I1(\Register_File_reg[6] [2]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [2]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [2]),
        .O(ALU_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_22
       (.I0(\Register_File_reg[3] [1]),
        .I1(\Register_File_reg[2] [1]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [1]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [1]),
        .O(ALU_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_23
       (.I0(\Register_File_reg[7] [1]),
        .I1(\Register_File_reg[6] [1]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [1]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [1]),
        .O(ALU_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_24
       (.I0(\Register_File_reg[3] [0]),
        .I1(\Register_File_reg[2] [0]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[1] [0]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[0] [0]),
        .O(ALU_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ALU_i_25
       (.I0(\Register_File_reg[7] [0]),
        .I1(\Register_File_reg[6] [0]),
        .I2(Data_Memory_i_7_n_0),
        .I3(\Register_File_reg[5] [0]),
        .I4(Data_Memory_i_8_n_0),
        .I5(\Register_File_reg[4] [0]),
        .O(ALU_i_25_n_0));
  MUXF7 ALU_i_3
       (.I0(ALU_i_14_n_0),
        .I1(ALU_i_15_n_0),
        .O(Register_File[5]),
        .S(Data_Memory_i_6_n_0));
  MUXF7 ALU_i_4
       (.I0(ALU_i_16_n_0),
        .I1(ALU_i_17_n_0),
        .O(Register_File[4]),
        .S(Data_Memory_i_6_n_0));
  MUXF7 ALU_i_5
       (.I0(ALU_i_18_n_0),
        .I1(ALU_i_19_n_0),
        .O(Register_File[3]),
        .S(Data_Memory_i_6_n_0));
  MUXF7 ALU_i_6
       (.I0(ALU_i_20_n_0),
        .I1(ALU_i_21_n_0),
        .O(Register_File[2]),
        .S(Data_Memory_i_6_n_0));
  MUXF7 ALU_i_7
       (.I0(ALU_i_22_n_0),
        .I1(ALU_i_23_n_0),
        .O(Register_File[1]),
        .S(Data_Memory_i_6_n_0));
  MUXF7 ALU_i_8
       (.I0(ALU_i_24_n_0),
        .I1(ALU_i_25_n_0),
        .O(Register_File[0]),
        .S(Data_Memory_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALU_i_9
       (.I0(PC_reg__0[1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[0]),
        .O(ALU_i_9_n_0));
  (* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *) 
  RAM Data_Memory
       (.addra({Data_Memory_i_2_n_0,Data_Memory_i_3_n_0,Data_Memory_i_4_n_0,Data_Memory_i_5_n_0,1'b0,Data_Memory_i_6_n_0,Data_Memory_i_7_n_0,Data_Memory_i_8_n_0}),
        .clka(clock_IBUF_BUFG),
        .dina({Data_Memory_i_9_n_0,Data_Memory_i_10_n_0,Data_Memory_i_11_n_0,Data_Memory_i_12_n_0,Data_Memory_i_13_n_0,Data_Memory_i_14_n_0,Data_Memory_i_15_n_0,Data_Memory_i_16_n_0}),
        .douta(Data_Out),
        .wea(Write_Enable));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    Data_Memory_i_1
       (.I0(PC_reg__0[1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[0]),
        .O(Write_Enable));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_10
       (.I0(Data_Memory_i_23_n_0),
        .I1(Data_Memory_i_24_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_25_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_26_n_0),
        .O(Data_Memory_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_11
       (.I0(Data_Memory_i_27_n_0),
        .I1(Data_Memory_i_28_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_29_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_30_n_0),
        .O(Data_Memory_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_12
       (.I0(Data_Memory_i_31_n_0),
        .I1(Data_Memory_i_32_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_33_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_34_n_0),
        .O(Data_Memory_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_13
       (.I0(Data_Memory_i_35_n_0),
        .I1(Data_Memory_i_36_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_37_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_38_n_0),
        .O(Data_Memory_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_14
       (.I0(Data_Memory_i_39_n_0),
        .I1(Data_Memory_i_40_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_41_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_42_n_0),
        .O(Data_Memory_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_15
       (.I0(Data_Memory_i_43_n_0),
        .I1(Data_Memory_i_44_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_45_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_46_n_0),
        .O(Data_Memory_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_16
       (.I0(Data_Memory_i_47_n_0),
        .I1(Data_Memory_i_48_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_49_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_50_n_0),
        .O(Data_Memory_i_16_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_17
       (.I0(\Register_File_reg[7] [7]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [7]),
        .O(Data_Memory_i_17_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_18
       (.I0(\Register_File_reg[5] [7]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [7]),
        .O(Data_Memory_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Data_Memory_i_19
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .O(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    Data_Memory_i_2
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .I2(PC_reg__0[0]),
        .O(Data_Memory_i_2_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_20
       (.I0(\Register_File_reg[3] [7]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [7]),
        .O(Data_Memory_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    Data_Memory_i_21
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(sel0[1]));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_22
       (.I0(\Register_File_reg[1] [7]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [7]),
        .O(Data_Memory_i_22_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_23
       (.I0(\Register_File_reg[7] [6]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [6]),
        .O(Data_Memory_i_23_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_24
       (.I0(\Register_File_reg[5] [6]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [6]),
        .O(Data_Memory_i_24_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_25
       (.I0(\Register_File_reg[3] [6]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [6]),
        .O(Data_Memory_i_25_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_26
       (.I0(\Register_File_reg[1] [6]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [6]),
        .O(Data_Memory_i_26_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_27
       (.I0(\Register_File_reg[7] [5]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [5]),
        .O(Data_Memory_i_27_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_28
       (.I0(\Register_File_reg[5] [5]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [5]),
        .O(Data_Memory_i_28_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_29
       (.I0(\Register_File_reg[3] [5]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [5]),
        .O(Data_Memory_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA1)) 
    Data_Memory_i_3
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(Data_Memory_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_30
       (.I0(\Register_File_reg[1] [5]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [5]),
        .O(Data_Memory_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_31
       (.I0(\Register_File_reg[7] [4]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [4]),
        .O(Data_Memory_i_31_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_32
       (.I0(\Register_File_reg[5] [4]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [4]),
        .O(Data_Memory_i_32_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_33
       (.I0(\Register_File_reg[3] [4]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [4]),
        .O(Data_Memory_i_33_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_34
       (.I0(\Register_File_reg[1] [4]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [4]),
        .O(Data_Memory_i_34_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_35
       (.I0(\Register_File_reg[7] [3]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [3]),
        .O(Data_Memory_i_35_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_36
       (.I0(\Register_File_reg[5] [3]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [3]),
        .O(Data_Memory_i_36_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_37
       (.I0(\Register_File_reg[3] [3]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [3]),
        .O(Data_Memory_i_37_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_38
       (.I0(\Register_File_reg[1] [3]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [3]),
        .O(Data_Memory_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_39
       (.I0(\Register_File_reg[7] [2]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [2]),
        .O(Data_Memory_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA1)) 
    Data_Memory_i_4
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(Data_Memory_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_40
       (.I0(\Register_File_reg[5] [2]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [2]),
        .O(Data_Memory_i_40_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_41
       (.I0(\Register_File_reg[3] [2]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [2]),
        .O(Data_Memory_i_41_n_0));
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_42
       (.I0(\Register_File_reg[1] [2]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [2]),
        .O(Data_Memory_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_43
       (.I0(\Register_File_reg[7] [1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [1]),
        .O(Data_Memory_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_44
       (.I0(\Register_File_reg[5] [1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [1]),
        .O(Data_Memory_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_45
       (.I0(\Register_File_reg[3] [1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [1]),
        .O(Data_Memory_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_46
       (.I0(\Register_File_reg[1] [1]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [1]),
        .O(Data_Memory_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_47
       (.I0(\Register_File_reg[7] [0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[6] [0]),
        .O(Data_Memory_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_48
       (.I0(\Register_File_reg[5] [0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[4] [0]),
        .O(Data_Memory_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_49
       (.I0(\Register_File_reg[3] [0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[2] [0]),
        .O(Data_Memory_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA1)) 
    Data_Memory_i_5
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(Data_Memory_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAFFBA008)) 
    Data_Memory_i_50
       (.I0(\Register_File_reg[1] [0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[0]),
        .I4(\Register_File_reg[0] [0]),
        .O(Data_Memory_i_50_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Data_Memory_i_6
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .O(Data_Memory_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    Data_Memory_i_7
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .I2(PC_reg__0[0]),
        .O(Data_Memory_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    Data_Memory_i_8
       (.I0(PC_reg__0[0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .O(Data_Memory_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Data_Memory_i_9
       (.I0(Data_Memory_i_17_n_0),
        .I1(Data_Memory_i_18_n_0),
        .I2(sel0[2]),
        .I3(Data_Memory_i_20_n_0),
        .I4(sel0[1]),
        .I5(Data_Memory_i_22_n_0),
        .O(Data_Memory_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \PC[0]_i_1 
       (.I0(PC_reg__0[0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(Second_Cycle),
        .I4(reset_IBUF),
        .O(\PC[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005A7A)) 
    \PC[1]_i_1 
       (.I0(PC_reg__0[0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(Second_Cycle),
        .I4(reset_IBUF),
        .O(\PC[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006C4C)) 
    \PC[2]_i_1 
       (.I0(PC_reg__0[0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .I3(Second_Cycle),
        .I4(reset_IBUF),
        .O(\PC[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PC[0]_i_1_n_0 ),
        .Q(PC_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PC[1]_i_1_n_0 ),
        .Q(PC_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PC[2]_i_1_n_0 ),
        .Q(PC_reg__0[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h09)) 
    \Register_File[0][7]_i_1 
       (.I0(PC_reg__0[0]),
        .I1(PC_reg__0[2]),
        .I2(PC_reg__0[1]),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'h42)) 
    \Register_File[1][7]_i_1 
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .I2(PC_reg__0[0]),
        .O(\Register_File[1][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Register_File[2][7]_i_1 
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(\Register_File[2][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \Register_File[6][7]_i_1 
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[1]),
        .I2(PC_reg__0[0]),
        .O(\Register_File[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA00CF0FCA00C00)) 
    \Register_File[7][0]_i_1 
       (.I0(Data_Out[0]),
        .I1(ALU_Out[0]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_16_n_0),
        .O(\Register_File[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCAFFCF0FCAFFC00)) 
    \Register_File[7][1]_i_1 
       (.I0(Data_Out[1]),
        .I1(ALU_Out[1]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_15_n_0),
        .O(\Register_File[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA0FCF0FCA0FC00)) 
    \Register_File[7][2]_i_1 
       (.I0(Data_Out[2]),
        .I1(ALU_Out[2]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_14_n_0),
        .O(\Register_File[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CA00CF00CA00C00)) 
    \Register_File[7][3]_i_1 
       (.I0(Data_Out[3]),
        .I1(ALU_Out[3]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_13_n_0),
        .O(\Register_File[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA0FCFFFCA0FC0F)) 
    \Register_File[7][4]_i_1 
       (.I0(Data_Out[4]),
        .I1(ALU_Out[4]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_12_n_0),
        .O(\Register_File[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA0FCFFFCA0FC0F)) 
    \Register_File[7][5]_i_1 
       (.I0(Data_Out[5]),
        .I1(ALU_Out[5]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_11_n_0),
        .O(\Register_File[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA0FCFFFCA0FC0F)) 
    \Register_File[7][6]_i_1 
       (.I0(Data_Out[6]),
        .I1(ALU_Out[6]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_10_n_0),
        .O(\Register_File[7][6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \Register_File[7][7]_i_1 
       (.I0(PC_reg__0[2]),
        .I1(PC_reg__0[0]),
        .I2(PC_reg__0[1]),
        .O(\Register_File[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCA0FCFFFCA0FC0F)) 
    \Register_File[7][7]_i_2 
       (.I0(Data_Out[7]),
        .I1(ALU_Out[7]),
        .I2(PC_reg__0[1]),
        .I3(PC_reg__0[2]),
        .I4(PC_reg__0[0]),
        .I5(Data_Memory_i_9_n_0),
        .O(\Register_File[7][7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[0] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[0] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[1] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[1][7]_i_1_n_0 ),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[1] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[2] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[2][7]_i_1_n_0 ),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[2] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[3] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[3] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[4] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[4] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[5] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b0),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[5] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[6] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[6][7]_i_1_n_0 ),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[6] [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][0]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][1]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][2]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][3]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][4]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][5]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][6]_i_1_n_0 ),
        .Q(\Register_File_reg[7] [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Register_File_reg[7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\Register_File[7][7]_i_1_n_0 ),
        .D(\Register_File[7][7]_i_2_n_0 ),
        .Q(\Register_File_reg[7] [7]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    Second_Cycle_i_1
       (.I0(Second_Cycle),
        .I1(PC_reg__0[1]),
        .I2(PC_reg__0[2]),
        .I3(PC_reg__0[0]),
        .I4(reset_IBUF),
        .O(Second_Cycle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Second_Cycle_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Second_Cycle_i_1_n_0),
        .Q(Second_Cycle),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module Microprocessor
   (clock,
    reset);
  input clock;
  input reset;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire reset;
  wire reset_IBUF;

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  Datapath dp
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

(* CHECK_LICENSE_TYPE = "Data_Memory,blk_mem_gen_v8_3_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *) 
module RAM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Data_Memory.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  RAMblk_mem_gen_v8_3_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Adder_Subtractor_c_addsub_v12_0_10
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
  Adder_Subtractor_c_addsub_v12_0_10_viv xst_addsub
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

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module RAMblk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [7:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  RAMblk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAMblk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [7:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  RAMblk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module RAMblk_mem_gen_prim_wrapper
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [7:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_5 ,douta[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_13 ,douta[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_21 ,douta[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_29 ,douta[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module RAMblk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [7:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  RAMblk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Data_Memory.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_5" *) (* downgradeipidentifiedwarnings = "yes" *) 
module RAMblk_mem_gen_v8_3_5
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  RAMblk_mem_gen_v8_3_5_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5_synth" *) 
module RAMblk_mem_gen_v8_3_5_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [7:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  RAMblk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fgcHMpDB8YeTXYpoTsmWZ+EpGtmp4ttE4rhLnGC39GZlQ/zJoTz5jsPoaLlJ4UWaOu8wsqCjidiH
ybd7UHh7Iw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ce9yJwkNvACWlmAFVwVRYhOdCIZZzBisSiZXBvx+NUYf+lxZv1vyZmKRIRYhYQFaRqRT7XkpC1Ec
t+dZjN7MGpN15tip1+lCNk6nbQTIhD1RPmDELP6pl456iOpiQ/ZN6oyRQX4m6uADI4VCap54SPA7
xDAZ2Ihv8VRQzQqKu2s=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
yzmtZb9/BZ4O/Gzgyl5TFGS/WtQ6cUQXqy/uOVfW7wlrbPwEqT6tWciKofSv+CyJbJIVPzK8DKFI
WQJqQsaQvwHoiKvvvszZkqgvpH3DwEqS4ynnWHOJwHB19GcoOlPWiy5xKdCVGPEiN2a3E1iFT033
EH5wjBAeJPtvdeyOkLI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CczA2H+PI5anFc9KY7UKsIXFVNBdxrwuLyvm1R1kZm0IbddJ4LwKIbI7KyLLLLbAYBBP7wxcLmqe
F9t3HL4MVpwq4k/EpCH4FZDSvMDxPR4bzVAo6o1yJxQXLW3+NZAmPCzXZqtSSPYLsiDU+W9GQY7+
1HWJeXGRV4YcEBFMrw/6x47O9rznZwcpvN7ClnZOjFMV6qkda3BftQcnNwgtp2N+BsKgboXbAHKV
zExUhY74xU/ifF/nfy2HapVTvKKx6cjozDkWbYKX6BcnoM4cdYRte+0OO03Cf6J1WNNEdLgK4TLC
xfJwAliutWUOQcBc87pWvMgPIGLJ8vlUAFdzRw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XUGyGZ3f6ddj79v8VJz6tFeEU1K7Q7eXpxBZjIxiM9EM6yeIzUyNcfTtjPmDnlZ+RUHPbdJfKXo/
vqrH8/IP17g81z0rmYCYrrLWAiXXZVnF33Sby5XqXm99P3kbjtJRUqQHubpP9lxi/BwNEM2b+PmB
MKEcRy3QhkDyijUSVDevumkng5ROIwALCPIoFsnDOvu87+q48wG4+JVioc576FSFqZ3zKH+xln5a
0tGbwFbo8dlg6OZgf95UN2jhgacGA/kl7qJB8Iq/75yAi5qhWYQjCPA9zQ2g0VZuIoCqrY5Pz1/d
5FX25JIJkfhGP0833RpKbY6Iszo7lIM1Sha3sw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sY1OhSYlEri9JAkBv9M84SAJcAs2KDpaHeB2dfqS3s74ysd3frt6CyyFk6hNda0+culDUsAjRUVs
x11BMQ4Oo7lonjFlIt6y+8rL2UDn4GB+aEZFgEeAaV6hVtqs+l5mrUc4tqz0ovbu6bKxjVkhrpr9
3LZPe0AWv46dj3Mj7RdMEOaFBpgrDS7uox/mmIiEy3WXfqMlwahcqdRCOkGRbxZDtQPSXfHTdMia
rbflvAE/8GSkcXysduuffU6QTMADbxxBxy1skDfog0aCf/7pXE/cMgAqJn0d/nI9LN6/w/OjZCaV
itzFnyqX9yNrnz11rwDQtSNe9wLD5gUpgOeQrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
fbzosoreXyPvXXocyOxmbRoYWSWVNdA6q+899WJARVefkUUQOxSqiWFZSIcuZP56YI8GJS7ETpEM
4KdUdBYHju/feDt6sdJlkCZflPA2qVgChZYLtyqG99kQR6b4BD3c5ipVeOq+gdMYBefrHuvfqG1W
9iLce4SXRWhx3pcIlPDVftXvx5sSklbLStk7Fe/OPttqBZm+3UTbxbMutEgtYxXse3DB4QlRVTJF
TEjHM9Ve1IYkJoQEXVrVI1d40iD2rPc89ac060LcLTNlFBOPZRHHw5IBhXj2dYs6GbXGUCk7ec+n
rVqTgmqGfu26q41WrTsreW51n2DouIpzZYHpnQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
I95z+HhrHF/9Pq6fBNiQIDF6SQmJpAZbZaEgSuYMf09QscAp5LAYE6eWPtSXow1uf7yMv2lGcSm+
YWIhbzRVtj1of2wD8GJMPt/KCjReAQo7oXfalsNMxUlvgv/Y79omta951qI2pxBKmMTXZUImTwvF
FcE6dk2/pUGKZmK98Ho88YjCNnA+q2KQmDSQgp99DmV/KGXWZj+60lM6tW8ZMnpD0wwhNstTjPgf
+NK5VHptLkBEefTENmESrGLTkjGIkxJkdDhkq04aeMpb50EETO2XVo71sP8+lgWzIUiHnagBv08S
g99NTBafI8SDGcBuEQtMifLKPKMsYU7TUO9kJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6128)
`pragma protect data_block
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
tsK3GNonargKlVo21+XrzRiGSSHekzNNs4NL3FA=
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
