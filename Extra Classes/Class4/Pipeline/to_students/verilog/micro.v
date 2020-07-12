`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:23 03/19/2012 
// Design Name: 
// Module Name:    micro 
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

module micro(
	input 			Clk,
	input 			Rst,
	input 	[7:0]	Input_pins,
	output 	[7:0]	Output_pins
    );

/* Declarations used in Stage 1 */
wire 		[`CC_WIDTH-1:0] ctrl_codes1;
wire		[7:0]	Op_a;
wire		[7:0]	Op_b;
wire 		[`BUF_WIDTH-1:0] buf1;
wire		[15:0] instruction;
wire		stall;

wire 		[2:0] forw_a_ctrl, forw_b_ctrl; // data forward

/* Declarations used in Stage 2 */
wire	[`BUF_WIDTH-1:0]	out_stage2;
wire 	[`BUF_WIDTH-1:0] 	buf2;

/* Declarations used in Stage 3 */
wire [11:0] out_stage3;
wire  [11:0] buf3;

 
stage1 stage1(
	.Clk(Clk),											//input 							Clk,
	.Rst(Rst),											//input 							Rst,
	.Write_back(buf3),								//input 	[11:0] 				Write_back,
	.Stall(stall),
	.ctrl_code(ctrl_codes1),						//output [`CC_WIDTH-1:0]	ctrl_code,
	.Op_a(Op_a),										//output [7:0]					Op_a,
	.Op_b(Op_b),										//output [7:0]					Op_b
	// Inputs/Outputs related with Hazard Unit
	.IR(instruction),									//output [15:0]				Instruction
	.Forw_a_ctrl(forw_a_ctrl),
	.Forw_b_ctrl(forw_b_ctrl),
	.Forward_exec(out_stage2[`INPUT1]),			// value from execute stage
	.Forward_mem_acc(out_stage3[11:4]),			// value from memory access stage
	.Forward_wb(buf3[11:4])							// value from wb stage
);
														

buffer #(.WIDTH(`BUF_WIDTH)) buf_1(
	.Clk(Clk),											//input 				Clk,
	.Rst(Rst),											//input 				Rst,
	.In({Op_b,Op_a,ctrl_codes1}),  				//input 	[25:0] 	In,
	.Out(buf1)                                //output	[25:0] 	Out
);
 
 
stage2 stage2(
	.Buf1(buf1),										//input  [`BUF_WIDTH-1:0] buf1,
	.Out_stage2(out_stage2)							//output [`BUF_WIDTH-1:0] stage2_out
);

buffer #(.WIDTH(`BUF_WIDTH)) buf_2(
	.Clk(Clk),											//input 				Clk,
	.Rst(Rst),											//input 				Rst,
	.In(out_stage2),  								//input 	[25:0] 	In,
	.Out(buf2)                               	//output	[25:0] 	Out
);

 
stage3 stage3(
	.Clk(Clk),											//input 				Clk,	
	.Rst(Rst),											//input				Rst,
	.Buf2(buf2),										//input	[25:0]	buf2,
	.Input_pins(Input_pins),						//input	[7:0]		Input_pins,
	.Out_stage3(out_stage3),                  //output	[7:0]		Out,
	.Output_pins(Output_pins)						//output	[7:0]		Output_pins,
);

buffer #(.WIDTH(12)) buf_3(
	.Clk(Clk),											//input 				Clk,
	.Rst(Rst),											//input 				Rst,
	.In(out_stage3), 									//input 	[11:0] 	In,
	.Out(buf3)                                //output	[11:0] 	Out
); 
 
hazard_unit hazard_unit(
	.Stage1(instruction),
	.Stage2(buf1[`CC_WIDTH-1:0]),
	.Stage3(buf2[`CC_WIDTH-1:0]),
	.Stage4(buf3[`CC_WIDTH-1:0]),
	.Stall(stall),
	.Forw_a_ctrl(forw_a_ctrl),
	.Forw_b_ctrl(forw_b_ctrl)
); 

endmodule 