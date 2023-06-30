`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 11:23:00
// Design Name: 
// Module Name: contrl_add_sub
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


module contrl_add_sub(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire ctrl,
    output [3:0] s,
    output cout
    );
    wire c0, c1, c2;
	wire t0, t1, t2, t3;
    full_adder_behav fa0(
        .a(a[0]),
        .b(t0),
        .c(ctrl),
        .sum(s[0]),
        .carry(c0)
          );
    full_adder_behav fa1(
        .a(a[1]),
        .b(t1),
        .c(c0),
        .sum(s[1]),
        .carry(c1)
          );
    full_adder_behav fa2(
        .a(a[2]),
        .b(t2),
        .c(c1),
        .sum(s[2]),
        .carry(c2)
         );
    full_adder_behav fa3(
        .a(a[3]),
        .b(t3),
        .c(c2),
        .sum(s[3]),
        .carry(cout)
        );
		
	xor x0(t0, b[0],ctrl);
	xor x1(t1, b[1],ctrl);
	xor x2(t2, b[2],ctrl);
	xor x3(t3, b[3],ctrl);
	
endmodule
