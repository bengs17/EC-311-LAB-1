`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 06:55:57 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(
    );
    reg [3:0] A,B;
    reg [1:0] S;
    wire [7:0] Y;
    ALU alu(.A(A),.B(B),.S(S),.Y(Y));
    initial begin
    A = 4'b0001; B = 4'b0010;S = 2'b00;
    
    #100 S = 2'b01;
    #100 S = 2'b10;
    #100 S = 2'b11;
    end

endmodule
