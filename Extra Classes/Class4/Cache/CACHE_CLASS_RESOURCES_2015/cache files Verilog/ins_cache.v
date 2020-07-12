`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:48 04/12/2012 
// Design Name: 
// Module Name:    ins_cache 
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

/*
//	CACHE METRICS
//
//##Memory details: 256 Bytes#######################
//#													#
//#memory width:		64 bit				    	#
//#memory depth:		32 lines					#
//#memory address bus:	5 bit						#
//#													#
//##################################################
//
//##Address space:	256 Bytes######################
//#													#
//#word lenght: 	16 bit							#
//#line size: 		4 word (4*16bit = 64 bit line)	#
//#					(balance with memory throughput)#
//#cache storage:	64 Bytes						#
//#cache lines:	32 Bytes/4 word = 8 lines			#
//#													#
//##################################################
//
//##Address lenght: 8 bit (256 memory positions)################
//#																#
//#word address:	4 words per line -> 2 bit (b1:b0)			#
//#line address:	8 lines per set -> 3 bit (b4:b2)			#
//#tag lenght:		remaining bits + val bit -> 8-2-3+1 = 4 bit	#
//#																#
//##############################################################
*/

`define READY	0
`define WAIT	1

`define TAG_T	7
`define TAG_B	5

`define LINE_T	4
`define LINE_B	2

`define WORD_T	1
`define WORD_B  0

module ins_cache(
//PROCESSOR INTERFACE
    input clk,
    input rst,
    input rd_en,
    output rd_rdy,
    input [7:0] addr,
    output reg [15:0] inst,
	 
//MEMORY INTERFACE
	output[5:0] mem_addr,
	output mem_rd_en,
	input mem_rd_rdy,
	input[63:0] mem_data
    );

reg status;
 
reg[63:0] cache_set[7:0];
reg[3:0]	cache_tag[7:0];

wire new_status;
 
wire[63:0]	new_cache_set;
wire[3:0]	new_cache_tag;

wire cache_hit;

wire[63:0] line_source;

integer i;

//////ALIAS/////////
wire[2:0] line_addr;
assign line_addr = addr[`LINE_T:`LINE_B];

wire[1:0] word_addr;
assign word_addr = addr[`WORD_T:`WORD_B];
///////////////////


always @(posedge clk) begin
	if (rst) begin
		status <= `READY;
		for (i=0; i<8 ; i=i+1  ) begin
			cache_tag[i] <= 4'b0;
		end
	end
	else begin
		status <= new_status;

		cache_set[line_addr] <= new_cache_set;
		cache_tag[line_addr] <= new_cache_tag;
	end           
end

//STATE MACHINE AND REGISTER ASSIGN//////////////////////////////////////////////////////////

assign cache_hit = ({1'b1,addr[`TAG_T:`TAG_B]} == cache_tag[line_addr])?	1'b1	:
																			1'b0	;

assign new_status =	((status == `READY) && !rd_en )				?	`READY	:
					((status == `READY) && rd_en && cache_hit)	?	`READY	:
					((status == `READY) && rd_en && !cache_hit)	?	`WAIT	:
					((status == `WAIT) && !mem_rd_rdy )			?	`WAIT	:
					((status == `WAIT) && mem_rd_rdy )			?	`READY	:
																	status	;
																							
assign new_cache_set = ((status == `WAIT) && mem_rd_rdy )	?	mem_data				:
																cache_set[line_addr]	;

assign new_cache_tag = ((status == `WAIT) && mem_rd_rdy )	?	{1'b1,addr[`TAG_T:`TAG_B]}	:
																cache_tag[line_addr]		;

//OUTPUT ASSIGN//////////////////////////////////////////////////////////////////////////////
	//processor outputs
assign rd_rdy = (cache_hit && rd_en)						?	1'b1	:
				((status == `WAIT) && mem_rd_rdy && rd_en)	?	1'b1	:
																1'b0	;

assign line_source = ((status == `WAIT) && mem_rd_rdy && rd_en)	?	mem_data				:
																	cache_set[line_addr]	;
wire [15:0] inst_wire;
assign inst_wire =	(word_addr == 2'b00)	?	line_source[15:0] 	:
					(word_addr == 2'b01)	?	line_source[31:16] 	:
					(word_addr == 2'b10)	?	line_source[47:32] 	:
												line_source[63:48] 	;

always@(posedge clk) begin
	inst <= inst_wire;
end


	//memory outputs
assign mem_addr = addr[`TAG_T:`LINE_B];

assign mem_rd_en = ((status == `READY) && rd_en && !cache_hit)	?	1'b1	:
																	1'b0	;
	
endmodule
