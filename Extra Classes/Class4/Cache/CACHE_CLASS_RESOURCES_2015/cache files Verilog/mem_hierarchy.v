`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:25 04/12/2012 
// Design Name: 
// Module Name:    mem_hierarchy 
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

module mem_hierarchy(
    input clk,
    input rst,
    input rd_en,
    output rd_rdy,
    input [7:0] addr,
    output [15:0] inst
    );
	 

wire[15:0] instruction;
wire read_ready;

wire cache_mem_rd_en;
wire[5:0] cache_mem_addr;
wire[63:0] mem_cache_data;
wire mem_cache_rd_rdy;
	 
ins_cache_2way CACHE(
//PROCESSOR INTERFACE
    .clk(clk),
    .rst(rst),
    .rd_en(rd_en),
    .rd_rdy(read_ready),
    .addr(addr),
    .inst(instruction),	 
//MEMORY INTERFACE
	 .mem_addr(cache_mem_addr),
	 .mem_rd_en(cache_mem_rd_en),
	 .mem_rd_rdy(mem_cache_rd_rdy),
	 .mem_data(mem_cache_data)
    );

offchip_mem MEMORY(
    .clk(clk),
    .rst(rst),
	 .rd_en(cache_mem_rd_en),
    .addr(cache_mem_addr),
	 
	 .data_rdy(mem_cache_rd_rdy),
	 .data_out(mem_cache_data)
    );
	 
assign inst = instruction;
assign rd_rdy = read_ready;

endmodule
