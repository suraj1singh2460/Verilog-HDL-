`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 11:59:12
// Design Name: 
// Module Name: gray_bin
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


module gray_bin(
    input [3:0] g,
    output [3:0] b
);
assign b[0]=g[0]^b[1];
assign b[1]=g[1]^b[2];
assign b[2]=g[2]^b[3];
assign b[3]=g[3];
endmodule
