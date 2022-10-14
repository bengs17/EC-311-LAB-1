`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 05:31:28 PM
// Design Name: 
// Module Name: part2_mux
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


module part2_mux(
    input [7:0] J,K,L,M,
    input [1:0] S,
    output [7:0] Y
    );
    reg [7:0] y;
    always@(S) begin
        case (S)
            2'b00:y = J;
            2'b01:y = K;
            2'b10:y = L;
            2'b11:y = M;
        endcase
     end
     assign Y = y;
endmodule
