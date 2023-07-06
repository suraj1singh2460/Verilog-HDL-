`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 11:31:30
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input d,
input clk,
input rstn,
output [3:0] q
);

d_ff dff3(
.d(d),
.clk(clk),
.rstn(rstn),
.q(q[3])
);
d_ff dff2(
.d(q[3]),
.clk(clk),
.rstn(rstn),
.q(q[2])
);
d_ff dff1(
.d(q[2]),
.clk(clk),
.rstn(rstn),
.q(q[1])
);
d_ff dff0(
.d(q[1]),
.clk(clk),
.rstn(rstn),
.q(q[0])
);
endmodule
