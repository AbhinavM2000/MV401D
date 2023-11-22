`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 04:48:39 PM
// Design Name: 
// Module Name: E_4_USR
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


module E_4_USR(
  input clk, rst, 
  input [1:0] sel, // select
  input [3:0] pdi,  // parallel data in 
  input sldi,   // serial left data in
  input srdi,  // serial right data in
  output reg [3:0] pdo, //parallel data out
  output reg [3:0] do,
  output sldo, // serial left data out
  output srdo // serial right data out
);
  always@(posedge clk) 
  begin
    if(rst) 
    begin
    pdo<=0;
    do<=0;
  end
    else begin
      case(sel)
        2'h1: do <= {srdi,pdo[3:1]}; // Right Shift
        2'h2: do <= {pdo[2:0],sldi};  // Left Shift
        2'h3: pdo <= pdi; // PIPO
        default: do <= do; // Do nothing
      endcase
    end
  end
  assign sldo = do[0];
  assign srdo =do[3];
endmodule