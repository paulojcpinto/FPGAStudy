`define READY	0
`define WAIT	1

`define TAG_T	7
`define TAG_B	5

`define LINE_T	4
`define LINE_B	2

`define WORD_T	1
`define WORD_B 0

module Cache_2way_Associative(
	clock,
	reset,
	read_enable,
	address,
	memory_read_ready,
	memory_data,	
	read_ready,
	instruction,
	memory_address,
	memory_read_enable
);

	//PROCESSOR INTERFACE
	input			clock;				
	input			reset;
	input			read_enable;			
	input			[7:0]address;
	output		read_ready;
	output reg	[15:0]instruction;
	 
	//MEMORY INTERFACE
	input			memory_read_ready;
	input			[63:0]memory_data;
	output		[5:0] memory_address;
	output		memory_read_enable;
	
	reg 			status;
	wire 			new_status;
	
	reg[63:0] 	cache_set1[7:0];
	reg[3:0]		cache_tag1[7:0];
	reg[63:0] 	cache_set2[7:0];
	reg[3:0]		cache_tag2[7:0];

	wire[63:0]	new_cache_set1;	
	wire[3:0]	new_cache_tag1;
	wire[63:0]	new_cache_set2;
	wire[3:0]	new_cache_tag2;
	
	reg[7:0] pseudo_lru;
	wire new_pseudo_lru;

	wire cache_hit;
	wire cache_hit1;
	wire cache_hit2;

	wire[63:0] line_source;

	integer i;

//////ALIAS/////////
	wire[2:0] line_address;
	assign line_address = address[`LINE_T:`LINE_B];

	wire[1:0] word_address;
	assign word_address = address[`WORD_T:`WORD_B];
///////////////////
	
	always @(posedge clock) begin
		if (reset) begin
			status <= `READY;
			pseudo_lru <= 8'b0;
			for (i=0; i<8 ; i=i+1  ) begin
				cache_tag1[i] <= 4'b0;
				cache_tag2[i] <= 4'b0;
			end
		end
		else begin
			status <= new_status;

			cache_set1[line_address] <= new_cache_set1;
			cache_tag1[line_address] <= new_cache_tag1;
			cache_set2[line_address] <= new_cache_set2;
			cache_tag2[line_address] <= new_cache_tag2;
		
			pseudo_lru[line_address] <= new_pseudo_lru;
		end           
	end

//STATE MACHINE AND REGISTER ASSIGN//////////////////////////////////////////////////////////

	assign cache_hit1 = ({1'b1,address[`TAG_T:`TAG_B]} == cache_tag1[line_address])	?	1'b1	:
																													1'b0	;
	assign cache_hit2 = ({1'b1,address[`TAG_T:`TAG_B]} == cache_tag2[line_address])	?	1'b1	:
																													1'b0	;
	assign cache_hit = cache_hit1 | cache_hit2;

	assign new_status =	((status == `READY) && !read_enable)								?	`READY	:
								((status == `READY) && read_enable && cache_hit)				?	`READY	:
								((status == `READY) && read_enable && !cache_hit)				?	`WAIT		:
								((status == `WAIT)  && !memory_read_ready)						?	`WAIT		:
								((status == `WAIT)  && memory_read_ready)							?	`READY	:
																													status	;
																								
	assign new_cache_set1 = ((status == `WAIT) && memory_read_ready && (!pseudo_lru[line_address])	)	?	memory_data					:
																																			cache_set1[line_address];																					
	assign new_cache_set2 = ((status == `WAIT) && memory_read_ready && (pseudo_lru[line_address])	)	?	memory_data					:
																																			cache_set2[line_address];
																						

	assign new_cache_tag1 = ((status == `WAIT) && memory_read_ready && (!pseudo_lru[line_address])	)	?	{1'b1,address[`TAG_T:`TAG_B]}	:
																																			cache_tag1[line_address]		;
	assign new_cache_tag2 = ((status == `WAIT) && memory_read_ready && (pseudo_lru[line_address])	)	?	{1'b1,address[`TAG_T:`TAG_B]}	:
																																			cache_tag2[line_address]		;

	assign new_pseudo_lru = ((status == `WAIT) && memory_read_ready )		?	~pseudo_lru[line_address]	:
									(read_enable && cache_hit1)						?	1'b1								:
									(read_enable && cache_hit2)						?	1'b0								:
																									pseudo_lru[line_address]	;

//OUTPUT ASSIGN//////////////////////////////////////////////////////////////////////////////
	//processor outputs
	assign read_ready =	 (cache_hit && read_enable)											?	1'b1	:
								((status == `WAIT) && memory_read_ready && read_enable)		?	1'b1	:
																													1'b0	;

	assign line_source = ((status == `WAIT) && memory_read_ready && read_enable)	?	memory_data					:
								( cache_hit1 )															?	cache_set1[line_address]:	
								/*cache_hit2*/																cache_set2[line_address];
								
	wire [15:0] inst_wire;
	assign inst_wire =	(word_address == 2'b00)	?	line_source[15:0] 	:
								(word_address == 2'b01)	?	line_source[31:16] 	:
								(word_address == 2'b10)	?	line_source[47:32] 	:
																	line_source[63:48] 	;

	always@(posedge clock) begin
		instruction <= inst_wire;
	end


	//memory outputs
	assign memory_address = address[`TAG_T:`LINE_B];

	assign memory_read_enable = ((status == `READY) && read_enable && !cache_hit)	?	1'b1	:
																												1'b0	;
		
endmodule
