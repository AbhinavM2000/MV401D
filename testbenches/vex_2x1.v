`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 09:32:56
// Design Name: 
// Module Name: vex_2x1
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


module vex_2x1();
    
    reg [0:1]a;
    reg s;
    wire  y;
    _2x1_mux_vector uut(y,s,a[0:1]);
    
    initial
    begin
    
    #10 s=0;a=2'b00;
    #10 s=0;a=2'b01;
    #10 s=0;a=2'b10;
    #10 s=0;a=2'b11;
    #10 s=1;a=2'b00;
    #10 s=1;a=2'b01;
    #10 s=1;a=2'b10;
    #10 s=1;a=2'b11;
    
   
    
    #10 $finish;
    end
    
endmodule

