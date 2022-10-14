`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 04:26:51 PM
// Design Name: 
// Module Name: part2_adder
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


module part2_adder(
input [3:0] A,
input [3:0] B,
output [7:0] sum_o

    );
    
    assign sum_o=A+B;
endmodule
