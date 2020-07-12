`timescale 1ns / 1ps

module ctrlunit(
	input clock,
	input rst,
	input Astatus,
	output ALoad,
	output BLoad,
	output Muxsel,
	output out_ctrl
);


//===================Internal Constants===================
parameter 	s_input 	= 3'b000,
			s_extra 	= 3'b001,
			s_notequal 	= 3'b010,
			s_equal 	= 3'b011,
			s_output 	= 3'b100;
			
//===================Internal Variables===================
reg			[2:0]		state;	//Seq part of the FSM

//========================================================

// if state = s_input --> ALoad = '1' else ALoad = '0'
assign ALoad = (state == s_input) ? 1'b1 : 1'b0;

// if state = s_equal | s_notequal --> BLoad = '1' else BLoad = '0'
assign BLoad = (state == s_equal) ? 	1'b1 :
										(state == s_notequal) ? 1'b1 : 1'b0;

// if state = s_equal --> Muxsel = '1' else Muxsel = '0'
assign Muxsel = (state == s_equal) ? 1'b1 : 1'b0;

// if state = s_output --> out_ctrl = '1' else out_ctrl = '0'
assign out_ctrl = (state == s_output) ? 1'b1 : 1'b0;
										
										
//FSM -> Next State
always @(posedge clock)
begin : FSM
	if (rst == 1'b1) begin
		state <= s_input;
	end
	else
	begin
		case(state)
			s_input:
				state <= s_extra;
			s_extra:
				if (Astatus == 1'b1) begin
					state <= s_equal;
				end
				else begin
					state <= s_notequal;
				end
			s_equal:
				state <= s_output;
			s_notequal:
				state <= s_output;
			s_output:
				state <= s_input;
			default:
				state <= s_input;
		endcase
	end
end

endmodule