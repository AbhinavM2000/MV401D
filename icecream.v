


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:00:18 PM
// Design Name: 
// Module Name: icecream
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


module icecream(output y,
    input Sa,
    input Sw,
    input I,
    input P

    );
    wire w1,w2,w3,w4,w5;
    
    and a1(w1,Sa,Sw,~I,~P);
    and a2(w2,~Sa,Sw,~I,P);
    and a3(w3,~Sa,~Sw,I,P);
    and a4(w4,~Sa,Sw,I,~P);
    and a5(w5,Sa,~Sw,I,~P);
    
    //assign y = (Sa)&(Sw)&(~I)&(~P) + (~Sa)&(Sw)&(~I)&(P) + (~Sa)&(~Sw)&(I)&(P) + (~Sa)&(Sw)&(I)&(~P);
    
    or o1(y,w1,w2,w3,w4,w5);
    
endmodule


