`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 12:51:50
// Design Name: 
// Module Name: half_sub_gate
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


module half_sub_gate(
    input a,
    input b,
    output diff,
    output borrow
    );
wire t;
xor x1(diff, a, b);
not n1(t, a);
and a1(borrow, t, b);
endmodule
