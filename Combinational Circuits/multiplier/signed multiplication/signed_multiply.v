`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 17:58:08
// Design Name: 
// Module Name: signed_multiply
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



module signed_multiply(
input [3:0] a,
output [3:0] b,
output overflow
    );
assign {overflow, b[3:0]}=a<<2;
endmodule