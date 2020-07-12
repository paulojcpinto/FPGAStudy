`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2017 22:54:58
// Design Name: 
// Module Name: Microprocessor_tb
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


module Microprocessor_tb(

    );
    
    reg clock;
    reg reset;
        
    
    Microprocessor uut(
       .clock(clock),
       .reset(reset)
     );
        
        
     initial 
     begin 
        clock = 0;
        reset = 1;
        #90;
        reset = 0;
     end
        
     always 
     #5 clock <= ~clock;
     
endmodule
