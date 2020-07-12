`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:03:22 03/19/2014
// Design Name:   memory_hierarchy
// Module Name:   C:/Users/jorgepereira/Desktop/Cache_projects/Instruction_Cache/cache_test.v
// Project Name:  Instruction_Cache
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_hierarchy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cache_test;

	// Inputs
	reg clock;
	reg reset;
	reg read_enable;
	reg [7:0] address;

	// Outputs
	wire rd_ready;
	wire [15:0] inst;

	// Instantiate the Unit Under Test (UUT)
	memory_hierarchy uut (
		.clock(clock), 
		.reset(reset), 
		.read_enable(read_enable), 
		.address(address), 
		.rd_ready(rd_ready), 
		.inst(inst)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		read_enable = 0;
		address = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#10;
		
		reset = 0;
		address = 2;
		read_enable = 1;
		#70;
		
		read_enable = 0;
		#50;
		
		
		address = 1;
		read_enable = 1;
		#70;
		
		read_enable = 0;
		#50;
		
		address = 5;
		read_enable = 1;
		#70;
		
		read_enable = 0;
		#50;
		
		address = 3;
		read_enable = 1;
		#70;
		
		read_enable = 0;
		#10;
		
//		address = 1;
//		read_enable = 1;
//		#50;
		

	end
	
	//Clock generator
	always #5
		clock = ~clock;
      
endmodule

