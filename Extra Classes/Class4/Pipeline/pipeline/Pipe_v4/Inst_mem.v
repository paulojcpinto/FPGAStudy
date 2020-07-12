`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:54 03/23/2012 
// Design Name: 
// Module Name:    Inst_mem 
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
module ROM(
	input Clk,
	input Rst,
	input En,
	input [7:0] Addr,
	output reg [15:0] Data 
    );

reg [15:0] mem[255:0];
wire [15:0] new_data;

always@(posedge Clk)
begin
		Data <= new_data;
end

assign new_data = (Rst) 	? 	0:
						(En) 		? 	mem[Addr]: 
										Data;


initial
	  $readmemb("Imem.mif",mem, 0, 255);

endmodule
