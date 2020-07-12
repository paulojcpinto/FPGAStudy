`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:44 03/22/2012
// Design Name:   micro
// Module Name:   C:/Xilinx/Aulas/Pipe/micro_tb.v
// Project Name:  Pipe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: micro
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "defines.v" 
module micro_tb;

	// Inputs
	reg Clk;
	reg Rst;
	reg [7:0] Input_pins;

	// Outputs
	wire [7:0] Output_pins;

	// Instantiate the Unit Under Test (UUT)
	micro uut (
		.Clk(Clk), 
		.Rst(Rst), 
		.Input_pins(Input_pins), 
		.Output_pins(Output_pins)
	);

	integer file;
	
	initial begin
		// Initialize Inputs
		Clk = 0;
		Rst = 1;
		Input_pins = 8'd1; 
		#1;
	//	`ifdef SIMULATION
		// init memory
//		uut.stage1.inst_mem.mem[0] = {`LOADI,3'd1,1'b0,8'd4};
//		uut.stage1.inst_mem.mem[1] = {`LOADI,3'd2,1'b0,8'd1};
//		uut.stage1.inst_mem.mem[2] = {`LOADI,3'd6,1'b0,8'd7}; // 14
//		uut.stage1.inst_mem.mem[3] = {`LOADI,3'd7,1'b0,8'd4}; // 5
//		//uut.stage1.inst_mem.mem[4] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[5] = {`NOP,12'd0};
//		uut.stage1.inst_mem.mem[4] = {`SUB,3'd1,3'd1,3'd2,3'd0};
//		//uut.stage1.inst_mem.mem[7] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[8] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[9] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[10] = {`NOP,12'd0};
//		uut.stage1.inst_mem.mem[5] = {`BRZ,3'd0,3'd6,3'd1,3'd0};	
//		
//	//	uut.stage1.inst_mem.mem[12] = {`NOP,12'd0};	
//		uut.stage1.inst_mem.mem[6] = {`JMP,3'd0,3'd7,6'd0};	
//	//	uut.stage1.inst_mem.mem[14] = {`NOP,12'd0};
//		uut.stage1.inst_mem.mem[7] = {`LOADI,3'd1,1'b0,8'd222};	
//		uut.stage1.inst_mem.mem[8] = {`NOT,3'd2,3'd2,6'd0};	
//			uut.stage1.inst_mem.mem[9] = {`INOUT,3'd0,3'd6,6'd1};	
//		uut.stage1.inst_mem.mem[10] = {`INOUT,3'd5,3'd0,6'd0};	
//		
//		uut.stage1.inst_mem.mem[11] = {`LOADI,3'd0,1'b0,8'd55};
//		uut.stage1.inst_mem.mem[12] = {`LOADI,3'd3,1'b0,8'd99};
//	//	uut.stage1.inst_mem.mem[20] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[21] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[22] = {`NOP,12'd0};
//		//uut.stage1.inst_mem.mem[23] = {`NOP,12'd0};
//		
//		uut.stage1.inst_mem.mem[13] = {`STORE,3'd0,3'd0,3'd3,3'd0};	
//		
//		c	
//		
//		uut.stage1.inst_mem.mem[15] = {`STORE,3'd6,3'd2,5'd8,1'd1};	
//		uut.stage1.inst_mem.mem[16] = {`LOAD,3'd7,8'd200,1'd1};	
		
/*		uut.stage1.inst_mem.mem[0] = {`INOUT,3'd0,8'd0,1'b0};
		uut.stage1.inst_mem.mem[1] = {`LOADI,3'd4,1'b0,8'd9};
		uut.stage1.inst_mem.mem[2] = {`LOADI,3'd2,1'b0,8'd9};
		uut.stage1.inst_mem.mem[3] = {`LOADI,3'd6,1'b0,8'd0};
		uut.stage1.inst_mem.mem[4] = {`LOADI,3'd7,1'b0,8'd50};
		uut.stage1.inst_mem.mem[5] = {`LOADI,3'd1,1'b0,8'd5};
		uut.stage1.inst_mem.mem[6] = {`ADD,3'd1,3'd1,3'd0,3'd0};
		uut.stage1.inst_mem.mem[7] = {`STORE,3'd0,3'd1,3'd7,3'd0};	
		uut.stage1.inst_mem.mem[8] = {`LOAD,3'd5,3'd0,3'd7,3'd0};
		uut.stage1.inst_mem.mem[9] = {`SUB,3'd5,3'd5,3'd0,3'd0};
		uut.stage1.inst_mem.mem[10] = {`BRNZ,3'd0,3'd2,3'd5,3'd0};
		uut.stage1.inst_mem.mem[11] = {`LOADI,3'd3,1'b0,8'd255};
		uut.stage1.inst_mem.mem[12] = {`INOUT,3'd0,3'd3,5'd0,1'b1};
		 //end of init memory
		`endif	*/	// if SIMULATION isn't defined, initialize the memory by *.coe or *.mif file
		
		#9;
		Rst = 0;
		
        
		#2000;
		$finish;
	end
	
	always #5 Clk = ~Clk;
      
endmodule

