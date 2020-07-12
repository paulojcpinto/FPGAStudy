/*
	Defines
*/
`define LATENCY 5


/*
	Modulo Memoria offchip
*/
module offchip_memory(
	clock,					
	reset,
	read_enable,
	address,
	data_ready,
	data_bus
);
	 
	/*
		Entrada/Saidas
	*/
	 
		input 	clock;
		input 	reset;
		input 	read_enable;
		input 	[5:0]address;
	 
		output 	data_ready;
		output	[63:0]data_bus;
		
	/*
		Registos/barramentos
	*/
	
		reg		[3:0]lat_count;
		reg		en_temp;
		
		wire		[3:0]new_lat_count;
		wire		new_en_temp;
		wire		[63:0]data_interface;
		
	/*
		Implementação - Coração
	*/
		always @(posedge clock)
		begin
			if(reset)
			begin
				lat_count <= 0;
				en_temp <= 0;
			end
			else
			begin
				lat_count <= new_lat_count;
				en_temp <= new_en_temp;
			end
		end
	
		
		assign new_lat_count =	(lat_count == `LATENCY) 				?		0				:
										(lat_count != 0)							?		lat_count+1	:
										(read_enable)								?		1				:
																								0				;
																								
																								
																				
		assign new_en_temp =		(lat_count == (`LATENCY - 4'b10))	?		1				:
																								0				;
																								
																								
																							
																							
		assign data_ready =		(lat_count == `LATENCY	)				?		1				:
																								0				;
																				

		assign data_bus =	data_interface ;
		
		
		rom instruction_memory(
			.clock(clock), // input clka
			.reset(reset), // input rsta
			.enable(en_temp), // input ena
			.address(address), // input [5 : 0] addra
			.data(data_interface) // output [63 : 0] douta
		);


		
endmodule
