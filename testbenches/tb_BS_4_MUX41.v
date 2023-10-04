`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 22:23:57
// Design Name: 
// Module Name: tb_BS_4_MUX41
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

module tb_BS_4_MUX41();
reg s0,s1; 
reg [3:0]A0,A1,A2,A3;
wire [3:0]data;
BS_4_MUX41 uut(data,s0,s1,A0,A1,A2,A3);
  initial
    begin
    
    A0=4'b0001;A1=4'b0010;A2=4'b0100;A3=4'b1000;
     s0=0;s1=0;
    #10 s0=0;s1=1;
    #10 s0=1;s1=0;
    #10 s0=1;s1=1;
    #10 $finish;
    end

endmodule
