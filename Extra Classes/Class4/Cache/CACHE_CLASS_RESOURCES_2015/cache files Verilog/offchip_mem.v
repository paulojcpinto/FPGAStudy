`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:35 04/12/2012 
// Design Name: 
// Module Name:    offchip_mem 
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
`define LATENCY 5

module offchip_mem(
    input clk,
    input rst,
	input rd_en,
    input[5:0] addr,
	 
	output data_rdy,
	output [63:0] data_out
    );


reg [3:0]  	lat_count;
wire [3:0] 	new_lat_count;

wire [63:0] data_interf;

reg en_tmp;
wire new_en_tmp;

always@(posedge clk) begin
	if (rst) begin
		lat_count <= 4'b0;
		en_tmp <= 1'b0;
	end
	else begin
		lat_count <= new_lat_count;
		en_tmp <= new_en_tmp;
	end
end

assign new_lat_count = 	(lat_count == `LATENCY	)	?	4'b0				:
						(lat_count != 4'b0	)		?	lat_count + 4'b1	:
						(rd_en)						?	4'b1				:
														4'b0				;



assign new_en_tmp = (lat_count == (`LATENCY - 4'b10))	?	1'b1	:
															1'b0	;

assign data_rdy =	(lat_count == `LATENCY	)	?	1'b1	:
													1'b0	;
																	
assign data_out =	data_interf ;

ins_memory ONCHIP_MEM(
  .clka(clk), // input clka
  .rsta(rst), // input rsta
  .ena(en_tmp), // input ena
  .addra(addr), // input [5 : 0] addra
  .douta(data_interf) // output [63 : 0] douta
);

endmodule
