`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 15:50:00
// Design Name: 
// Module Name: full_sub_gate
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


module full_sub_gate(
    input a,
    input b,
    input bin,
    output diff,
    output borrow
    );
wire t1, t2, t3, t4, t5, t6;
xor x1(t1, a, b);
xor x2(diff, bin, t1);
not n1(t2, a);
and a1(t3, bin, b);
and a2(t4, b, t2);
and a4(t5, bin, t2);
or o1(t6, t3, t4);
or o2(borrow, t5, t6);
endmodule
