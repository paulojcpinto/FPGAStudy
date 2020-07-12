//`define CACHE_2_WAY_ASSOCIATIVE

module memory_hierarchy(
	clock,
	reset,
	read_enable,
	address,
	rd_ready,
	inst	
);
	/*
		Entrada/Saidas
	*/
	 
	input clock;
   input reset;
   input read_enable;
	input [7:0]address;
	
   output rd_ready;
   output [15:0] inst;
	
	/*
		Registos/barramentos
	*/
	
	wire[15:0] instruction;
	wire read_ready;
	wire cache_mem_rd_en;
	wire[5:0] cache_mem_addr;
	wire[63:0] mem_cache_data;
	wire mem_cache_rd_rdy;
	
	
`ifdef CACHE_2_WAY_ASSOCIATIVE
	
	Cache_2way_Associative CACHE(
		.clock(clock),
		.reset(reset),
		.read_enable(read_enable),
		.address(address),
		.memory_read_ready(mem_cache_rd_rdy),
		.memory_data(mem_cache_data),	
		.read_ready(read_ready),
		.instruction(instruction),
		.memory_address(cache_mem_addr),
		.memory_read_enable(cache_mem_rd_en)
	);
		
`else

	Cache_Direct_Mapped CACHE(
		.clock(clock),
		.reset(reset),
		.read_enable(read_enable),
		.address(address),
		.read_ready(read_ready),
		.instruction(instruction),
		
		.memory_read_ready(mem_cache_rd_rdy),
		.memory_data(mem_cache_data),
		.memory_address(cache_mem_addr),
		.memory_read_enable(cache_mem_rd_en)
	);
	
`endif
		
	offchip_memory MEMORY(
		.clock(clock),
		.reset(reset),
		.read_enable(cache_mem_rd_en),
		.address(cache_mem_addr),

		.data_ready(mem_cache_rd_rdy),
		.data_bus(mem_cache_data)
	);
	
	
	assign inst = instruction;
	assign rd_ready = read_ready;


endmodule
