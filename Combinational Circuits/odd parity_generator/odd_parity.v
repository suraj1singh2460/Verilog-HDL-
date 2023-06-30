`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 12:13:59
// Design Name: 
// Module Name: odd_parity
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


module odd_parity(
input [3:0] a,
output odd_p,
output [4:0] odd_p_gen
);
assign odd_p = ^a;
assign odd_p_gen = {odd_p,a[3:0]};
endmodule
