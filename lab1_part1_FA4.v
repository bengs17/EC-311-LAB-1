`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 03:44:42 PM
// Design Name: 
// Module Name: lab1_part1_FA4
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


module lab1_part1_FA4(
input carry_i, [3:0] a_i, [3:0] b_i,
output [3:0] sum_o, [3:0]carry_o
    );

    lab1_part1_FA1 add0(.a0_i(a_i[0]),.b0_i(b_i[0]),.carry0_i(carry_i),.sum0_o(sum_o[0]),.carry0_o(carry_o[0]));
    lab1_part1_FA1 add1(.a0_i(a_i[1]),.b0_i(b_i[1]),.carry0_i(carry_o[0]),.sum0_o(sum_o[1]),.carry0_o(carry_o[1]));
    lab1_part1_FA1 add2(.a0_i(a_i[2]),.b0_i(b_i[2]),.carry0_i(carry_o[1]),.sum0_o(sum_o[2]),.carry0_o(carry_o[2]));
    lab1_part1_FA1 add3(.a0_i(a_i[3]),.b0_i(b_i[3]),.carry0_i(carry_o[2]),.sum0_o(sum_o[3]),.carry0_o(carry_o[3]));
endmodule
