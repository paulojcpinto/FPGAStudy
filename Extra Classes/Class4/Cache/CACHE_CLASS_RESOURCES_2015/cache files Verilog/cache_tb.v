`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:59 04/12/2012
// Design Name:   ins_cache
// Module Name:   C:/Users/Filipe/Documents/UNIVERSIDADE/PhD 1/AC/cache_example/cache_tb.v
// Project Name:  cache_example
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ins_cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cache_tb;

	// Inputs
	reg clk;
	reg rst;
	reg rd_en;
	reg [7:0] addr;
	reg mem_rd_rdy;
	reg [63:0] mem_data;

	// Outputs
	wire rd_rdy;
	wire [15:0] inst;
	wire [5:0] mem_addr;
	wire mem_rd_en;

	// Instantiate the Unit Under Test (UUT)
	ins_cache uut (
		.clk(clk), 
		.rst(rst), 
		.rd_en(rd_en), 
		.rd_rdy(rd_rdy), 
		.addr(addr), 
		.inst(inst), 
		.mem_addr(mem_addr), 
		.mem_rd_en(mem_rd_en), 
		.mem_rd_rdy(mem_rd_rdy), 
		.mem_data(mem_data)
	);

		
always begin
	#5;
	clk = ~clk;
end
	
	always@(posedge clk) begin
	if (rd_rdy) begin
		addr = addr + 1;
	end
end
	

initial begin
	#1000;
	$finish;
end
	
	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		rd_en = 1;
		addr = 0;
		mem_rd_rdy = 0;
		mem_data = 0;

		// Wait 100 ns for global reset to finish
		#21;
		rst = 0;

		#10;
		addr = 0;	
		rd_en = 1;
		mem_rd_rdy = 0;
		mem_data = 0;
		

		#20;
		addr = 0;	
		//rd_en = 0;
		mem_rd_rdy = 1;
		mem_data = 64'hAAAABBBBCCCCDDDD;
		
		#10;
		mem_rd_rdy = 0;
		mem_data = 0;
			
		
        
		// Add stimulus here
	end
	
      
endmodule

