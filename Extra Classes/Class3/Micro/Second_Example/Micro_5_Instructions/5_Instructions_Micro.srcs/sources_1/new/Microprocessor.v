`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2017 10:19:01
// Design Name: 
// Module Name: Microprocessor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//******    INSTRUCTIONS OPCODES   *****//
`define MovRegDirect 5'b00001
`define MovRegImmediate 5'b00010
`define MovDirectReg 5'b00011
`define Add 5'b00100
`define Sub 5'b00101
`define MovRegatReg 5'b00110
`define MovatRegReg 5'b00111

module Control_Unit(
    input [4:0] Opcode,    
    output Data_Alu,
    output Data_Reg,
    output Data_Mem,
    output Data_Imm,
    output Reg_atReg,
    output atReg_Reg,
    output Write_Mem,
    output Write_Reg,    
    output Add_Sub
    );
      
    wire MovRegDirect = (Opcode == `MovRegDirect);
    wire MovRegImmediate = (Opcode == `MovRegImmediate);
    wire MovDirectReg = (Opcode == `MovDirectReg);
    wire Add = (Opcode == `Add);
    wire Sub = (Opcode == `Sub);
    wire MovRegatReg = (Opcode == `MovRegatReg);
    wire MovatRegReg = (Opcode == `MovatRegReg);
        
    assign Data_Alu = Add | Sub;
    assign Data_Reg = MovDirectReg;
    assign Data_Mem = MovRegDirect;
    assign Data_Imm = MovRegImmediate;
    assign Reg_atReg = MovRegatReg;
    assign atReg_Reg = MovatRegReg;
     
    assign Write_Mem = (MovRegDirect || MovatRegReg);
    assign Write_Reg = (MovRegDirect || MovRegImmediate || Add || Sub || MovRegatReg);
      
    assign Add_Sub = Add;
endmodule

//////////////////////////////////////////////////////////////////////////////////

module Datapath(
    input clock,
    input reset
    );
    
    reg [15:0] Code_Memory [7:0];
    reg [7:0] PC;
    reg [7:0] Register_File [7:0];
    wire [4:0] Opcode;
    
    wire [15:0] Instruction_Register;
    wire [2:0] Operand1_Register;
    wire [7:0] Operand2;
    wire [2:0] Operand2_Register;
    
    wire [7:0] Data_Out;
    wire [7:0] Data_In;
    wire [7:0] Address;
    wire Write_Enable;
    
    wire [7:0] ALU_A;
    wire [7:0] ALU_B;
    wire [7:0] ALU_Out;
    wire ADD;
    
    wire Data_Alu;
    wire Data_Reg;
    wire Data_Mem;
    wire Data_Imm;
    wire Reg_atReg;
    wire atReg_Reg;
    
    wire [7:0] Data;
    integer i;          
    reg Second_Cycle;   
    wire Write_Register;
    
    RAM Data_Memory (
      .clka(clock),        // input wire clka
      .wea(Write_Enable),  // input wire [0 : 0] wea
      .addra(Address),     // input wire [7 : 0] addra
      .dina(Data_In),      // input wire [7 : 0] dina
      .douta(Data_Out)     // output wire [7 : 0] douta
    );
    
    Adder_Subtractor ALU (
      .A(ALU_A),          // input wire [7 : 0] A
      .B(ALU_B),          // input wire [7 : 0] B
      .ADD(ADD),          // input wire ADD
      .S(ALU_Out)         // output wire [7 : 0] S
    );
    
    assign Instruction_Register = Code_Memory[PC];
    assign Opcode = Instruction_Register[15:11];
    assign Operand1_Register = Instruction_Register[10:8];
    assign Operand2 = Instruction_Register[7:0];
    assign Operand2_Register = Instruction_Register[2:0];
    
    assign Address = Reg_atReg ? Register_File[Operand2_Register] :
                      atReg_Reg ? Register_File[Operand1_Register] :
                       Operand2;
                       
    assign Data_In = atReg_Reg ? Register_File[Operand2_Register] :
                       Register_File[Operand1_Register];
    
    assign ALU_A = Register_File[Operand1_Register];
    assign ALU_B = Register_File[Operand2_Register];
    
    assign Data = Data_Reg ? Register_File[Operand1_Register] :
                    Data_Mem ? Data_Out :
                      Data_Imm ? Operand2  :
                        Reg_atReg ? Data_Out:
                            Data_Alu ? ALU_Out : 0;
    

    always @(posedge(clock))
    begin
         if (reset) begin
               // initializing "code memory" @ reset
               Code_Memory[0] <= 16'b00010_000_11110000; //MOV R0, #B11110000      R0 = F0H
               Code_Memory[1] <= 16'b00010_010_00000010; //MOV R2, 02H             R2 = 02H
               Code_Memory[2] <= 16'b00011_000_10000001; //MOV 81H, R0             MEM[81H] = F0H
               Code_Memory[3] <= 16'b00001_001_10000001; //MOV R1, 81H             R1 = F0H
               Code_Memory[4] <= 16'b00100_001_00000010; //ADD R1, R2              R1 = F2H
               Code_Memory[5] <= 16'b00101_000_00000010; //SUBB R0, R2             R0 = EEH
               Code_Memory[6] <= 16'b00110_000_00000001; //MOV R0, @R1             R0 = MEM[F2H]
               Code_Memory[7] <= 16'b00111_000_00000001; //MOV @R0, R1             MEM[EEH] = F2H
               
               Second_Cycle <= 0;
               
               PC <= 0;
               
               for(i = 0; i < 8; i=i+1)
                   Register_File[i] <= 0;
                   
           end 
           else begin
                if(Write_Register)  
                    Register_File[Operand1_Register] <= Data;
                               
                if(!Second_Cycle && Data_Mem) begin // data from memory (MOV RX, direct) is only avaiable 1 cycle after
                    Second_Cycle <= 1;            
                    end
                else begin
                    PC <= PC + 1; 
                    Second_Cycle <= 0;
                    end
           
           end
    
    end
    
    Control_Unit CU(
        .Opcode(Opcode),    
        .Data_Alu(Data_Alu),
        .Data_Reg(Data_Reg),
        .Data_Mem(Data_Mem),
        .Data_Imm(Data_Imm),
        .Reg_atReg(Reg_atReg),
        .atReg_Reg(atReg_Reg), 
        .Write_Mem(Write_Enable),
        .Write_Reg(Write_Register),
        .Add_Sub(ADD)
        );
    
endmodule

//////////////////////////////////////////////////////////////////////////////////

module Microprocessor(
    input clock,
    input reset
    );

    Datapath dp(
    .clock(clock),
    .reset(reset)
    );
    
endmodule
