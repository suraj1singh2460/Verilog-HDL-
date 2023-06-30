`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 15:03:51
// Design Name: 
// Module Name: comp_gate
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


module comp_gate(
input [1:0] a,
input [1:0] b,
output greater,
output lesser,
output equal
);
wire [1:0] a_bar, b_bar;
wire t0,t1,t2,t3,t4,t5,t6,t7;

not (a_bar[0],a[0]);
not (a_bar[1],a[1]);
not (b_bar[0],b[0]);
not (b_bar[1],b[1]);

and (t0, a[1], b_bar[1]);
and (t1, a[0], b_bar[0], b_bar[1]);
and (t2, a[1], a[0], b_bar[0]);
or (greater, t0, t1, t2);

xor (t3, a_bar[1], b[1]);
xor (t4, a_bar[0], b[0]);
and (equal, t3, t4);

and (t5, a_bar[1], b[1]);
and (t6, a_bar[0], b[1], b[0]);
and (t7, a_bar[0], a_bar[1], b[0]);
or (lesser, t5, t6, t7);

endmodule
