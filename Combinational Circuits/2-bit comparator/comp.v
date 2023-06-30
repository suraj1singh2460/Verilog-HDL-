`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 14:44:33
// Design Name: 
// Module Name: comp
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


module comp(
input [1:0] a,
input [1:0] b,
output greater,
output lesser,
output equal
);
assign greater=(a[1]&~b[1])|(a[0]&~b[0]&~b[1])|(a[1]&a[0]&~b[0]);
assign equal=(~(a[1]^b[1]))&(~(a[0]^b[0]));
assign lesser=(!a[1]&b[1])|(!a[0]&b[1]&b[0])|(!a[0]&!a[1]&b[0]);
endmodule
