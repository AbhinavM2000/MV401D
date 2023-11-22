

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 11/22/2023 02:55:51 PM
// Design Name: 
// Module Name: FB_det_1010_mea
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
module FB_det_1010_mea(input clk,input w,input rst,output reg z);
    reg [1:0]CS, NS;
    //wire [1:0]A,B,C,D;
    //assign A=2'b00;
    //assign B=2'b01;
    //assign C=2'b10;
    //assign D=2'b11;
parameter A=2'b00, B=2'b01,C=2'b10,D=2'b11;
    always@(w,CS)
        begin
            case(CS)
                A:
                    begin
                        if(w==0)
                            begin
                                NS=A;
                                z=0;
                            end
                        else
                            begin
                                NS=B;
                                z=0;
                            end
                    end
                B:
                    begin
                        if(w==0)
                            begin
                                NS=C;
                                z=0;
                            end
                        else
                            begin
                                NS=B;
                                z=0;
                            end
                    end
                C:
                    begin
                        if(w==0)
                            begin
                                NS=A;
                                z=0;
                            end
                        else
                            begin
                                NS=D;
                                z=0;
                            end
                    end
                D:
                    begin
                        if(w==0)
                            begin
                                NS=C;
                                z=1;
                            end
                        else
                            begin
                                NS=B;
                                z=0;
                            end
                    end
            endcase
        end
        
    always@(posedge clk)  //CS triggered here, w triggered at i/p
        begin
            if(rst==1)
                CS<=A;   //init
            else
                CS<=NS; //NS from prev. clk 
        end
endmodule

