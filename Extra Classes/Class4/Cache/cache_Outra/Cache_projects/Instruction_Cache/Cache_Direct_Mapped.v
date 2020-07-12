`define READY	0
`define WAIT	1

`define TAG_T	7
`define TAG_B	5

`define LINE_T	4
`define LINE_B	2

`define WORD_T	1
`define WORD_B 0

module Cache_Direct_Mapped(
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

	/*
		Processor Interface
	*/
	input			clock;				
	input			reset;
	input			read_enable;			
	input			[7:0]address;
	output		read_ready;
	output reg	[15:0]instruction;
	 
	/*
		Memory Interface
	*/
	input			memory_read_ready;
	input			[63:0]memory_data;
	output		[5:0]memory_address;
	output		memory_read_enable;
	
	
	reg 			status;							// Estado actual - State Machine
	reg			[63:0]cache_set[7:0];		// cache
	reg			[3:0]cache_tag[7:0];			// tag usada para endereçar a cache_Set

	wire			new_status;						// Proximo estado - State Machine
	wire			[63:0]new_cache_set;			
	wire			[3:0]new_cache_tag;
	wire			cache_hit;						// Encontrou a word na Cache
	wire			[63:0]line_source;			// Cache Line
	
	wire 			[15:0]inst_wire;

	integer 		i;

	//////ALIAS/////////
	wire			[2:0]line_addr = address[`LINE_T:`LINE_B];
	wire			[1:0]word_addr = address[`WORD_T:`WORD_B];
	///////////////////
	
	always @(posedge clock) 
	begin
		if (reset) 
		begin
			status <= `READY;
			
			for (i=0; i<8 ; i=i+1  )
				cache_tag[i] <= 4'b0;
				
		end
		else 
		begin
			status <= new_status;
			cache_set[line_addr] <= new_cache_set;
			cache_tag[line_addr] <= new_cache_tag;
		end           
	end
	
	//STATE MACHINE AND REGISTER ASSIGN//////////////////////////////////////////////////////////

	assign cache_hit = 	({1'b1,address[`TAG_T:`TAG_B]} == cache_tag[line_addr])		?		1										:
																														0										;
																										
	assign new_status =	((status == `READY)	&& !read_enable 						)		?		`READY								:
								((status == `READY)	&& read_enable && cache_hit		)		?		`READY								:
								((status == `READY)	&& read_enable && !cache_hit		)		?		`WAIT									:
								((status == `WAIT)	&& !memory_read_ready 				)		?		`WAIT									:
								((status == `WAIT)	&& memory_read_ready 				)		?		`READY								:
																														status								;
																														
																								
	assign new_cache_set = 	((status == `WAIT) 	&& memory_read_ready 			)		?		memory_data							:
																														cache_set[line_addr]				;

	assign new_cache_tag = 	((status == `WAIT) 	&& memory_read_ready 			)		?		{1'b1,address[`TAG_T:`TAG_B]}	:
																														cache_tag[line_addr]				;
																														
	//OUTPUT ASSIGN AND PROCESSOR OUTPUTS////////////////////////////////////////////////////////
	
	assign read_ready = 	(cache_hit 				&& read_enable								)	?		1										:
								((status == `WAIT)	&& memory_read_ready && read_enable	)	?		1										:
																														0										;


	assign line_source = ((status == `WAIT) 	&& memory_read_ready && read_enable	)	?		memory_data							:
																														cache_set[line_addr]				;
																														
	assign inst_wire =	(word_addr == 0)		?	line_source[15:0] 	:
								(word_addr == 1)		?	line_source[31:16] 	:
								(word_addr == 2)		?	line_source[47:32] 	:
																line_source[63:48] 	;
																	
	always@(posedge clock)
		instruction <= inst_wire;


	//MEMORY OUTPUTS/////////////////////////////////////////////////////////////////////////////
																																																							
	assign memory_address = address[`TAG_T:`LINE_B];

	assign memory_read_enable = ((status == `READY) && read_enable && !cache_hit)	?	1	:
																												0	;
	


															
endmodule