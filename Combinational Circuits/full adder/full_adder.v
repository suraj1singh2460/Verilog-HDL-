`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 12:36:43
// Design Name: 
// Module Name: full_adder
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


module full_adder_gate(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
wire [2:0] t;

half_adder_gate ha1(
    .a(a),
    .b(b),
    .sum(t[0]),
    .carry(t[1])
    );
half_adder_gate ha2(
        .a(t[0]),
        .b(c),
        .sum(sum),
        .carry(t[2])
        );
assign carry = t[2] | t[1];
endmodule
