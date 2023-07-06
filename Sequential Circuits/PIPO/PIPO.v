`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 13:07:15
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input [3:0] d,
    input clk,
    input rstn,
    output [3:0] q
    );
d_ff dff3(
.d(d[3]),
.clk(clk),
.rstn(rstn),
.q(q[3])
);
d_ff dff2(
.d(d[2]),
.clk(clk),
.rstn(rstn),
.q(q[2])
);
d_ff dff1(
.d(d[1]),
.clk(clk),
.rstn(rstn),
.q(q[1])
);
d_ff dff0(
.d(d[0]),
.clk(clk),
.rstn(rstn),
.q(q[0])
);

endmodule
