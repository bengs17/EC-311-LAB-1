`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 06:39:12 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [3:0] A,B,
input [1:0] S,
output [7:0] Y
    );
    wire [7:0]J,K,L,M;
    part2_concat concat(.A(A),.B(B),.AB(J));
    part2_adder add(.A(A),.B(B),.sum_o(K));
    part2_shifter shift(.A(A),.B(B),.shift(L));
    part2_multiplier  mul(.A(A),.B(B),.product_o(M));
    part2_mux mux(.J(J),.K(K),.L(L),.M(M),.S(S),.Y(Y));
   
endmodule
