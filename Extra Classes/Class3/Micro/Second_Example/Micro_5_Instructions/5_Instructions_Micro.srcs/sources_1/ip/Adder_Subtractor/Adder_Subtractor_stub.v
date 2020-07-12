// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 26 11:06:15 2018
// Host        : DESKTOP-3TOAJO0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Ivo/Desktop/Micro_5_Instructions/5_Instructions_Micro.srcs/sources_1/ip/Adder_Subtractor/Adder_Subtractor_stub.v
// Design      : Adder_Subtractor
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *)
module Adder_Subtractor(A, B, ADD, S)
/* synthesis syn_black_box black_box_pad_pin="A[7:0],B[7:0],ADD,S[7:0]" */;
  input [7:0]A;
  input [7:0]B;
  input ADD;
  output [7:0]S;
endmodule
