`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:02 03/19/2012 
// Design Name: 
// Module Name:    RF 
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
module RF(
	input				Clk,
	input				We,	
	input		[2:0]	Waddr,
	input		[7:0]	In,
	input		[2:0]	Raddr_a,
	input		[2:0]	Raddr_b,
	output	[7:0]	Out_a,
	output	[7:0]	Out_b
);
		
reg [7:0]	registers[7:0]; 		
		
assign Out_a = registers[Raddr_a];
assign Out_b = registers[Raddr_b];
		
always@(posedge Clk)
begin
	if(We)
	begin
		registers[Waddr] <= In;
	end
end		
		
endmodule 