`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 03:51:38 PM
// Design Name: 
// Module Name: lab_part1_testbench4
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


module lab_part1_testbench4(
    );
    reg carry_i;
    reg [3:0]a_i;
    reg [3:0]b_i;
    wire [3:0] S;
    wire C;
    wire V;
    lab1_part1_add_sub add_sub(.carry_i(carry_i), .a_i(a_i), .b_i(b_i),.S(S),.C(C),.V(V));
    initial begin
    a_i = 4'b0000; 
    b_i = 4'b0000; 
    carry_i = 0;
end

always begin
    
    #10 {a_i, b_i, carry_i} = {a_i, b_i, carry_i} + 4'b0001;
    if ((a_i == 4'b1111) && (b_i == 4'b1111)&&(carry_i == 1))
        $stop;
    end

endmodule
