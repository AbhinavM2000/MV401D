`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 22:06:39
// Design Name: 
// Module Name: tb_E_4_USR
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

module tb_E_4_USR;
  reg clk, rst;
  reg [1:0] sel;
  reg [3:0] pdi;
  reg sldi, srdi;
  wire [3:0] pdo; //parallel data out
  wire sldo, srdo;
  
  E_4_USR uut(clk, rst, sel, pdi, sldi, srdi, pdo, sldo, srdo);
  
  always #2 clk = ~clk;
  initial begin
    
    clk = 0; rst = 1;
    #3 rst = 0;
    #5
    
    pdi = 4'b1001;
    sel = 2'h3; #4;
    
    
    
   #100 $finish;
  end

   
endmodule