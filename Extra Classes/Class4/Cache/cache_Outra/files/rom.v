module rom(
	clock,
	reset,
	enable,
	address,
	data
    );
	 
	/*
		Entrada/Saidas
	*/
	
	input			clock;
	input			reset;
	input			enable;
	input			[5:0]address;
	output reg	[63:0]data;



	reg 			[63:0]memory[31:0];
	wire 			[63:0]new_data;
	
	
	always@(posedge clock)
		data <= new_data;
		
	assign new_data = 	(reset) 			? 	0						:
								(enable) 		? 	memory[address]	: 
														data					;
														
														
	initial
	begin
		memory[0] = 64'haaaabbbbccccdddd;
		memory[1] = 64'heeeeffff99998888;
		memory[2] = 64'h7777666655554444;
		memory[3] = 64'h3333222211110000;
	end

	
endmodule


