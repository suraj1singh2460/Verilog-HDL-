`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 12:51:16
// Design Name: 
// Module Name: even_parity
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



module even_parity(
input [3:0] a,
output even_p,
output [4:0] even_p_gen
);
assign even_p = ~(^a);
assign even_p_gen = {even_p,a[3:0]};
endmodule
