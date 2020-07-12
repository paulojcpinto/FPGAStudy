`include "top.v"

module tb_tob_1;

	//Inputs
	reg clock;
	reg rst;
	reg [3:0] DinA;
	
	//Outputs
	wire [3:0] DoutB;

	//Instantiate the Unit Under Test (UUT)
	top uut (
		.clock(clock),
		.rst(rst),
		.DinA(DinA),
		.DoutB(DoutB)
	);

	initial begin
		//Initialize inputs
		clock = 0;
		rst = 1;
		DinA = 4'b0000;
	
		//wait 100 ns for global reset to finish
		#100;
		rst = 0;
	
	
		//Add stimulus here
		
	end

	always #100 clock = ~clock;
	always #800 DinA = DinA + 1'b1;

endmodule