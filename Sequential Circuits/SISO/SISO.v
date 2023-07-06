`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 10:56:11
// Design Name: 
// Module Name: SISO
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


module SISO(
input d,
input clk,
input rstn,
output q
    );
wire [2:0] t;
d_ff dff3(
.d(d),
.clk(clk),
.rstn(rstn),
.q(t[2])
);
d_ff dff2(
.d(t[2]),
.clk(clk),
.rstn(rstn),
.q(t[1])
);
d_ff dff1(
.d(t[1]),
.clk(clk),
.rstn(rstn),
.q(t[0])
);
d_ff dff0(
.d(t[0]),
.clk(clk),
.rstn(rstn),
.q(q)
);
endmodule
