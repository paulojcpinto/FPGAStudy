`include "datapath.v"
`include "ctrlunit.v"

`timescale 1ns / 1ps

module top(
	input clock,
	input rst,
	input [3:0] DinA,
	output[3:0] DoutB
);


ctrlunit ctrl_unit(
	.clock(clock), 		//input
	.rst(rst),			//input
	.Astatus(Astatus),	//input
	.ALoad(ALoad),		//output
	.BLoad(BLoad),		//output
	.Muxsel(Muxsel),	//output
	.out_ctrl(out_ctrl)	//output
);

datapath data_path(
	.ALoad(ALoad),			//input
	.BLoad(BLoad),			//input
	.Muxsel(Muxsel),		//input
	.clock(clock),			//input
	.out_ctrl(out_ctrl),	//input
	.DinA(DinA),			//input
	.Astatus(Astatus),		//output
	.DoutB(DoutB)			//output
);

endmodule