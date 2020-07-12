`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:00 03/19/2012 
// Design Name: 
// Module Name:    stage1 
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

module stage1(
	input 							Clk,
	input 							Rst,
	input 	[11:0] 				Write_back,
	input								Stall,
	output 	[`CC_WIDTH-1:0]	ctrl_code,
	output 	[7:0]					Op_a,
	output 	[7:0]					Op_b,
	// for hazard unit
	output	[15:0]				IR,			
	input 	[2:0]					Forw_a_ctrl,
	input		[2:0]					Forw_b_ctrl,
	input		[7:0]					Forward_exec,
	input		[7:0]					Forward_mem_acc,
	input		[7:0]					Forward_wb
    );

reg 	[7:0] 	PC;											// Program Counter
wire  [7:0]		new_PC;			

wire 	[15:0] 	Instruction;								// Fetched instruction
//wire	[15:0]	IR;											// Fetched instruction from memory

wire 	[3:0] 	opcode;										// Instruction opcode

wire				eq_to_zero;									// used in Branch instructions
reg				bubble;
wire 				jump_taken;									// used to detecte if a jump was performed

wire	[7:0]		RF_out_a;									// Register-File output_a
wire	[7:0]		RF_out_b;									// Register-File output_b
 
`ifdef SIMULATION

ROM inst_mem(
  .Clk(Clk), 													// input Clk
  .Rst(Rst),													// input Rst
  .En(~Stall),													// input En
  .Addr(PC), 													// input [7 : 0] Addr
  .Data(IR)	 													// output [15 : 0] Data
);

`else
// Core_generator
Imem inst_mem (
  .clka(Clk), 													// input clka
  .rsta(Rst), 													// input rsta
  .ena(~Stall), 													// input ena
  .addra(PC), 													// input [7 : 0] addra
  .douta(IR) 													// output [15 : 0] douta
);

`endif 

assign Instruction = 	(Stall)	? 	0: // NOP instruction
								(bubble) ? 	0:	// NOP instruction
												IR;

assign opcode = Instruction[15:12];						// instruction opcode

/* Control Code generation */
assign ctrl_code[`DMEM_WE]	= 	(opcode == `STORE) ? 1:
																	0;

assign ctrl_code[`OPCODE] 	= 	opcode;

assign ctrl_code[`RF_WE]	= 	((opcode == `JMP) || (opcode == `BRZ) || (opcode == `BRNZ))	?	0:
										(opcode == `STORE)														? 	0: 
										((opcode == `INOUT) && (Instruction[0] == 1))					? 	0:
										(opcode == `NOP)															? 	0:
																															1; 
										
assign ctrl_code[`RF_ADDR]	= 	Instruction[11:9]; 				// Register destination address

assign ctrl_code[`OUTPUT]	= 	Instruction[0]; 

// PC update
always@(posedge Clk)
begin
	PC <= new_PC;
end

assign new_PC = 	(Rst) 		? 	8'd0:					// reset
						(Stall)		?	PC:					// hold same value
						(bubble) 	? 	PC + 1'b1:			// insert buble when a jump was taken
						(jump_taken)? 	Op_a:					// if a jump taken, update PC
											PC + 1'b1;			// increment PC

assign eq_to_zero = ~(|Op_b);								// Comparator used for Branch instructions
assign jump_taken = (opcode == `JMP) || ((opcode == `BRZ) && eq_to_zero) || ((opcode == `BRNZ) && ~eq_to_zero);

always@(posedge Clk)
	bubble <= jump_taken;									// if jump is taken, the next instruction is bubble

RF Register_File(
	.Clk(Clk),													//input				Clk,
	.Rst(Rst),
	.We(Write_back[0]),										//input				We,	
	.Waddr(Write_back[3:1]),								//input		[2:0]	Waddr
	.In(Write_back[11:4]),									//input		[7:0]	In
	.Raddr_a(Instruction[8:6]),							//input		[2:0]	Raddr_a,
	.Raddr_b(Instruction[5:3]),							//input		[2:0]	Raddr_b,
	.Out_a(RF_out_a),											//output		[7:0]	Out_a,
	.Out_b(RF_out_b)											//output		[7:0]	Out_b,
);

wire [7:0] Op_a_tmp =	(opcode == `LOADI) ?  	Instruction[7:0]:
																RF_out_a;

wire [7:0] Op_b_tmp =	(opcode == `LOAD) && (Instruction[0] == 1)	?  Instruction[8:1]:
								(opcode == `STORE) && (Instruction[0] == 1)	? 	{Instruction[11:9],Instruction[5:1]}:
																								RF_out_b;
																								
assign Op_a = 	(Forw_a_ctrl == 1) ? Forward_exec:
					(Forw_a_ctrl == 2) ? Forward_mem_acc:
					(Forw_a_ctrl == 3) ? Forward_wb:
												Op_a_tmp;

																												
assign Op_b = 	(Forw_b_ctrl == 1) ? Forward_exec:
					(Forw_b_ctrl == 2) ? Forward_mem_acc:
					(Forw_b_ctrl == 3) ? Forward_wb:
												Op_b_tmp;

endmodule
