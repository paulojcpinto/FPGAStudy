`timescale 1ns / 1ps

module datapath(
	input ALoad,
	input BLoad,
	input Muxsel,
	input clock,
	input out_ctrl,
	input [3:0] DinA,
	output Astatus,
	output reg[3:0] DoutB
);

reg [3:0] A,B;

assign Astatus = (A == 4'b0101) ? 1'b1 : 1'b0;

//Register Transfer Operation -> INPUT A
always @(posedge clock)
begin
	// When ALoad = '1', Muxsel = 'x', BLoad = '0', OutCtrl = '0'
	if(ALoad == 1'b1 && BLoad == 1'b0 && out_ctrl == 1'b0) 
	begin
		A = DinA;
	end
	else
	begin
		A = A;
	end
end

//RT Operation -> B = 8 and B = 13
always @(posedge clock)	
begin
	// When ALoad = '0', BLoad = '1', OutCtrl = '0'
	if(ALoad == 1'b0 && BLoad == 1'b1 && out_ctrl == 1'b0)
	begin
		if(Muxsel == 1'b0) 	// Muxsel = '0'
		begin
			B = 4'd13;
		end
		else	//Muxsel = '1'
		begin
			B = 4'd8;
		end
	end
	else
	begin
		B = B;
	end
end

//RT Operation -> Output B
always @(posedge clock)
begin
	// When ALoad = '0', Muxsel = 'x', BLoad = '0', OutCtrl = '1'
	if(ALoad == 1'b0 && BLoad == 1'b0 && out_ctrl == 1'b1) 
	begin
		DoutB = B;
	end
	else
	begin
		DoutB = DoutB;
	end
end

endmodule

