`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:00 03/19/2012 
// Design Name: 
// Module Name:    stage2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "defines.v"

module stage2(
	input  [`BUF_WIDTH-1:0] Buf1,
	output [`BUF_WIDTH-1:0] Out_stage2
    );

wire [7:0] alu_o;

assign Out_stage2 = {Buf1[`INPUT2],alu_o,Buf1[`CC_WIDTH-1:0]}; 

ALU my_ALU(
	.In1(Buf1[`INPUT1]),
	.In2(Buf1[`INPUT2]),
	.Op(Buf1[`OPCODE]),
	.Out(alu_o)
);


endmodule
