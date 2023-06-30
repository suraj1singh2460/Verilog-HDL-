`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 16:12:12
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output [3:0] s,
    output cout
    );
    wire c0, c1, c2;
    full_adder_behav fa0(
        .a(a[0]),
        .b(b[0]),
        .c(cin),
        .sum(s[0]),
        .carry(c0)
          );
    full_adder_behav fa1(
        .a(a[1]),
        .b(b[1]),
        .c(c0),
        .sum(s[1]),
        .carry(c1)
          );
    full_adder_behav fa2(
        .a(a[2]),
        .b(b[2]),
        .c(c1),
        .sum(s[2]),
        .carry(c2)
         );
    full_adder_behav fa3(
        .a(a[3]),
        .b(b[3]),
        .c(c2),
        .sum(s[3]),
        .carry(cout)
        );
            
endmodule
