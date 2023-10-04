`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 19:12:50
// Design Name: 
// Module Name: tb_BR_4_MUX_41
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


module tb_BR_4_MUX_41();
reg [1:0]s; 
reg [3:0]A0,A1,A2,A3;
wire [3:0]data;
BR_4_MUX_41 uut(data,s,A0,A1,A2,A3);
  initial
    begin
    
    #10 A0=4'b0001;A1=4'b0010;A2=4'b0100;A3=4'b1000;
    #10 s=2'b00;
    #10 s=2'b01;
    #10 s=2'b10;
    #10 s=2'b11;
   
    
    
    
    #10 $finish;
    end



endmodule
