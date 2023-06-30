`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 18:06:42
// Design Name: 
// Module Name: signed_division
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


module signed_division(
input [3:0] a,
output [3:0] b,
output remainder
    );
assign {b[3:0],remainder}={a[3],a[3],a[2:1],a[0]};

endmodule
