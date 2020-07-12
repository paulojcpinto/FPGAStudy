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
	input				Rst,
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
	if(Rst)
	begin
		registers[0]		<= 8'b0;
		registers[1]		<= 8'b0;
		registers[2]		<= 8'b0;
		registers[3]		<= 8'b0;
		registers[4]		<= 8'b0;
		registers[5]		<= 8'b0;
		registers[6]		<= 8'b0;		
		registers[7]		<= 8'b0;		
	end
	if(We)
	begin
		registers[Waddr] <= In;
	end
end		
		
endmodule 