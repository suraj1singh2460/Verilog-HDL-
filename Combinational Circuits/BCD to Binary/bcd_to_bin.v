`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 18:21:34
// Design Name: 
// Module Name: bcd_to_bin
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
// arithmatic approach

module bcd_to_bin(
input [7:0] bcd,
output [7:0] bin
);
assign bin = (bcd[7:4] * 4'd10)+ bcd[3:0];
endmodule
