`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 03:44:05 PM
// Design Name: 
// Module Name: lab1_part1
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


module lab1_part1(
    input a_i, b_i,
    output sum_o,carry_o
    );
    xor G1(sum_o, a_i, b_i);
    and G2(carry_o,a_i,b_i);
    
endmodule
