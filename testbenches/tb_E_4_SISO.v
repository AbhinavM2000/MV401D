`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 21:23:29
// Design Name: 
// Module Name: tb_E_4_PIPO
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


module tb_E_4_SISO();
reg clk,rst;
reg si;
wire so;
E_4_SISO uut(clk,rst, si, so);


initial 
    begin
        clk=0;
        forever #5 clk = ~clk;  
    end
initial
begin
 rst=1; #10
 
 rst=0; #10
 
 si = 1'b1; #5
 
 si = 1'b1; #5
 
 si = 1'b0; #5
 
  si = 1'b0; #5
 
 si = 1'b1; #5
 
 si = 1'b1; #5
 
  si = 1'b0; #5
 
 si = 1'b0; #5
 
 si = 1'b1; #5
 
  si = 1'b1; #5
 
 si = 1'b1; #5
 
 si = 1'b1; #5
 
  si = 1'b1; #5
 
 si = 1'b1; #5
 
 si = 1'b1; #5
 
  si = 1'b1; #5
 
 si = 1'b1; #5
 
 si = 1'b1; #5
 #100 $finish;
end
endmodule
