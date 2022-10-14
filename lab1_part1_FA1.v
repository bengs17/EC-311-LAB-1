`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 04:29:24 PM
// Design Name: 
// Module Name: lab1_part1_FA1
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


module lab1_part1_FA1(
    input carry0_i, a0_i, b0_i,
    output sum0_o, carry0_o
    );
    wire s1,c1,c2;
    lab1_part1 test(.a_i(a0_i),.b_i(b0_i),.sum_o(s1),.carry_o(c1));
    lab1_part1 test2(.a_i(s1),.b_i(carry0_i),.sum_o(sum0_o),.carry_o(c2));
    or G1(carry0_o, c2, c1);

endmodule
