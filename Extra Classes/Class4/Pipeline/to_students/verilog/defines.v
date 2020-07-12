/* 

ISA

	ADD Rd, Ra, Rb					Rd = Ra + Rb
	SUB Rd, Ra, Rb					Rd = Ra - Rb
	AND Rd, Ra, Rb					Rd = Ra & Rb
	OR  Rd, Ra, Rb					Rd = Ra | Rb
	XOR Rd, Ra, Rb					Rd = Ra ^ Rb
	NOT Rd, Ra						Rd = ~Ra 

	LOADI Rd, imm					Rd = imm

	LOAD Rd,@Rb						Rd = Mem[Rb]
	STORE Ra,@Rb					Mem[Rb] = Ra

	LOAD Rd,imm						Rd = Mem[imm]
	STORE Ra,imm					Mem[imm] = Ra

	JMP @(Ra)						PC = Ra

	BRZ  Rb,@Ra						IF (Rb==0) PC = Ra
	BRNZ Rb,@Ra						IF (Rb!=0) PC = Ra
	
	INPUT Rd							Rd = INPUT						
	OUTPUT Ra						OUTPUT = Ra

*/

//opcodes
`define NOP			4'b0000
`define ADD			4'b1100
`define SUB			4'b0001
`define AND			4'b0010
`define OR			4'b0011
`define XOR			4'b0100
`define NOT			4'b0101
`define LOADI		4'b0110
`define LOAD		4'b0111
`define STORE		4'b1000
`define JMP			4'b1001
`define BRZ			4'b1010
`define BRNZ		4'b1011
`define INOUT		4'b1101

// Buffers
//`define DMEM_WE		0			// data memory write enable
//`define OPCODE			4:1		// instruction opcode
//`define RF_WE			5			// Register File write enable
//`define RF_ADDR		8:6		// Destination register address
//`define OUTPUT			9			// output or input instruction


`define RF_WE			0			// Register File write enable
`define RF_ADDR		3:1		// Destination register address
`define DMEM_WE		4			// data memory write enable
`define OPCODE			8:5		// instruction opcode
`define OUTPUT			9			// output or input instruction

`define INPUT1			17:10		// Opa for each stage
`define INPUT2			25:18		// Opb for each stage

`define BUF_WIDTH		26			// buffer width (control codes + two inputs)
`define CC_WIDTH 		10 		// control codes width