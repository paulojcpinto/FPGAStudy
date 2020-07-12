`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:21 03/23/2012 
// Design Name: 
// Module Name:    data_mem 
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
module RAM(
	input Clk,
	input Rst,
	input We,
	input [7:0] Addr,
	input [7:0] Data_in,
	output [7:0] Data_out
    );


reg [7:0] mem[255:0];

assign Data_out = (Rst) ? 0 : mem[Addr];

wire [7:0] tmp;

always@(posedge Clk)
begin
	mem[Addr] <= tmp;
end

assign tmp = (We & ~Rst) ? Data_in:
									mem[Addr];

endmodule
