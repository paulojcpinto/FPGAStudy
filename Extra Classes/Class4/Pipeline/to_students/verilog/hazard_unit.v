`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:20 03/25/2012 
// Design Name: 
// Module Name:    hazard_unit 
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

module hazard_unit(
	input [15:0]				Stage1,
	input [`CC_WIDTH-1:0] 	Stage2,
	input [`CC_WIDTH-1:0] 	Stage3,
	input [`CC_WIDTH-1:0]	Stage4,
	output 						Stall,
	output [2:0]				Forw_a_ctrl,
	output [2:0]				Forw_b_ctrl
    );
	 
// Decoding	1st stage
wire 	[2:0]		RF_Ra 	= Stage1[8:6];  		// Register File read address port a
wire 	[2:0]		RF_Rb 	= Stage1[5:3];  		// Register File read address port b
wire 	[3:0] 	opcode 	= Stage1[15:12];		// Instruction opcode
wire				imm 		= Stage1[0];			// immediate flag

// Decoding	2nd stage - Execute stage
wire 	[2:0]		RF_Rd_exec = Stage2[`RF_ADDR];	// Register File (destination) write address 
wire 				RF_Rd_exec_we = Stage2[`RF_WE];	// // Register File (destination) write enable

// Decoding	3rd stage - Memory Access stage
wire 	[2:0]		RF_Rd_mem_acc = Stage3[`RF_ADDR];	// Register File (destination) write address 
wire 				RF_Rd_mem_acc_we = Stage3[`RF_WE];	// Register File (destination) write enable

// Decoding	3rd stage - Write-Back stage
wire 	[2:0]		RF_Rd_wb = Stage4[`RF_ADDR];	// Register File (destination) write address 
wire 				RF_Rd_wb_we = Stage4[`RF_WE];	// Register File (destination) write enable


/* Indicate equality of register address between stages */
wire 	Ra_eq_Rd_exec = (RF_Ra == RF_Rd_exec) && (RF_Rd_exec_we);	// Ra address is equal to Rd address from Execution stage
wire 	Rb_eq_Rd_exec = (RF_Rb == RF_Rd_exec) && (RF_Rd_exec_we);

wire 	Ra_eq_Rd_mem_acc = (RF_Ra == RF_Rd_mem_acc) && (RF_Rd_mem_acc_we);
wire 	Rb_eq_Rd_mem_acc = (RF_Rb == RF_Rd_mem_acc) && (RF_Rd_mem_acc_we);

wire 	Ra_eq_Rd_wb = (RF_Ra == RF_Rd_wb) && (RF_Rd_wb_we);	
wire 	Rb_eq_Rd_wb = (RF_Rb == RF_Rd_wb) && (RF_Rd_wb_we);


/* Instructions subject to hazards in the first stage (read from RF is required)*/
wire ALU = (opcode == `ADD) || (opcode == `SUB) || (opcode == `AND) || (opcode == `OR) || (opcode == `XOR);
wire NOT = (opcode == `NOT);
wire LOAD_R 	= (opcode == `LOAD) 	&& ~imm;
wire STORE_R 	= (opcode == `STORE) && ~imm;
wire STORE_I 	= (opcode == `STORE) && imm;
wire OUTPUT		= (opcode == `INOUT) && imm;
wire JMP			= (opcode == `JMP);
wire BRZs		= (opcode == `BRZ) || (opcode == `BRNZ);

/* Indicate there is a possibility of performing data forwarding to Ra (instruction that read from Ra)*/
wire hazard_op_a = ALU | NOT | STORE_R | STORE_I | OUTPUT | JMP | BRZs;

/* Indicate there is a possibility of performing data forwarding to Rb (instruction that read from Rb)*/
wire hazard_op_b = ALU | LOAD_R | STORE_R | BRZs;

/* Forwards */
assign Forw_a_ctrl = 	(hazard_op_a && Ra_eq_Rd_exec) 		? 	1:
								(hazard_op_a && Ra_eq_Rd_mem_acc)	?	2:
								(hazard_op_a && Ra_eq_Rd_wb)			?	3:
																					0;
																					
assign Forw_b_ctrl = 	(hazard_op_b && Rb_eq_Rd_exec) 	 	? 	1:
								(hazard_op_b && Rb_eq_Rd_mem_acc)	?	2:
								(hazard_op_b && Rb_eq_Rd_wb)			?	3:
																					0;
																							
/* A Stall is done when a forward cannot be performed */
/* If a 'load' or 'input' instruction is in the execute stage a forward cannot be done...
(Value is not ready, only after memory or input access) */

/* Indicates if the instruction on the execute stage is a LOAD or INPUT instruction */
wire load_or_input = (Stage2[`OPCODE] == `LOAD) || (Stage2[`OPCODE] == `INOUT && ~imm);

assign Stall = ((hazard_op_a && Ra_eq_Rd_exec) || (hazard_op_b && Rb_eq_Rd_exec)) && load_or_input;

endmodule
