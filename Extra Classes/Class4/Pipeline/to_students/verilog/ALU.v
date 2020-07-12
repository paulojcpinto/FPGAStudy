`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:41 03/19/2012 
// Design Name: 
// Module Name:    ALU 
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

module ALU(
	input 			[7:0] In1,
	input 			[7:0] In2,
	input 			[3:0] Op,
	output 	reg	[7:0] Out
    );


always@(*)
begin
	case(Op)
	`ADD:	Out = In1 + In2;
	`SUB:	Out = In1 - In2;
	`AND:	Out = In1 & In2;
	`OR:	Out = In1 | In2;
	`XOR:	Out = In1 ^ In2;
	`NOT:	Out = ~In1;
	default:		Out = In1; // if no ALU instruction selected, forward the input1
	endcase
end

endmodule
