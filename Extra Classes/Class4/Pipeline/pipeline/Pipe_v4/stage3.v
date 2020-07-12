`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:17 03/19/2012 
// Design Name: 
// Module Name:    stage3 
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

module stage3(
	input 								Clk,
	input									Rst,
	input			[`BUF_WIDTH-1:0]	Buf2,
	input			[7:0]					Input_pins,
	output		[11:0]				Out_stage3,
	output reg 	[7:0]					Output_pins
    );

wire 	[7:0] Dmem_out;
wire 	[7:0] new_output_pins;
wire	[7:0]	out;

RAM data_mem(
  .Clk(Clk), 							// input Clk
  .Rst(Rst),							// input Rst
  .We(Buf2[`DMEM_WE]), 				// input [0 : 0] We
  .Addr(Buf2[`INPUT2]), 			// input [7 : 0] Addr
  .Data_in(Buf2[`INPUT1]), 		// input [7 : 0] Data_in
  .Data_out(Dmem_out) 				// output [7 : 0] Data_out
);

assign out = 	(Buf2[`OPCODE] == `LOAD)								?	Dmem_out:		// data from memory
					(Buf2[`OPCODE] == `INOUT) & (~Buf2[`OUTPUT]) 	?	Input_pins:		// data from input pins
																						Buf2[`INPUT1];	// data from ALU

assign Out_stage3 = {out,Buf2[`RF_ADDR],Buf2[`RF_WE]};	// write-back the register value and address


// Output Pins
always@(posedge Clk)
begin
		Output_pins <= new_output_pins;
end

assign new_output_pins = 	(Rst)														? 	8'd0:					// reset
									((Buf2[`OPCODE] == `INOUT) & Buf2[`OUTPUT])	? 	Buf2[`INPUT1]:		// data from register
																									Output_pins;		// hold the same value
endmodule
