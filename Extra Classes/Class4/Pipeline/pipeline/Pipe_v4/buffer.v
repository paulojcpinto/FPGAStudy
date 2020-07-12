`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:29 03/20/2012 
// Design Name: 
// Module Name:    buffer 
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
module buffer #(parameter WIDTH=16)( 
	input 							Clk,
	input 							Rst,
	input 		[WIDTH-1:0] 	In,
	output reg 	[WIDTH-1:0] 	Out
);

always@(posedge Clk)
begin
	if(Rst)
		Out <= 0;
	else
		Out <= In;
end

endmodule 