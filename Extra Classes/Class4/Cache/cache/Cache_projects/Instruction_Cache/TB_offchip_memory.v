`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:10 03/08/2014
// Design Name:   offchip_memory
// Module Name:   C:/Users/jorgepereira/Desktop/Cache_projects/Instruction_Cache/TB_offchip_memory.v
// Project Name:  Instruction_Cache
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: offchip_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_offchip_memory;

	// Inputs
	reg clock;
	reg reset;
	reg read_enable;
	reg [5:0] address;

	// Outputs
	wire data_ready;
	wire [63:0] data_bus;

	// Instantiate the Unit Under Test (UUT)
	offchip_memory uut (
		.clock(clock), 
		.reset(reset), 
		.read_enable(read_enable), 
		.address(address), 
		.data_ready(data_ready), 
		.data_bus(data_bus)
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
		#50;
		
		

	end
      
	//Clock generator
	always #5
		clock = ~clock;
	
	
endmodule

