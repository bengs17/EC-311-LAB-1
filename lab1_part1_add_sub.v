`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 03:30:35 PM
// Design Name: 
// Module Name: lab1_part1_add_sub
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


module lab1_part1_add_sub(
input carry_i, [3:0] a_i, [3:0] b_i,
output [3:0] S,
output C,
output V
    );
    wire [3:0] carry_o;
    wire [3:0] b;
    
    xor G1(b[0],carry_i,b_i[0]);
    xor G2(b[1],carry_i,b_i[1]);
    xor G3(b[2],carry_i,b_i[2]);
    xor G4(b[3],carry_i,b_i[3]);
    
    lab1_part1_FA4 add(.carry_i(carry_i), .a_i(a_i), .b_i(b),.sum_o(S),.carry_o(carry_o));
    xor G5(V, carry_o[3],carry_o[2]);
    assign C = carry_o[3];
    
endmodule
