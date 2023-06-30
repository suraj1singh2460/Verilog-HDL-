`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 12:16:58
// Design Name: 
// Module Name: gray_bin_gate
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


module gray_bin_gate(
input [3:0] g,
output [3:0] b
    );
buf b1(b[3],g[3]);
xor x1(b[2], g[3], g[2]);
xor x2(b[1], b[2], g[1]);
xor x3(b[0], b[1], g[0]);
endmodule
