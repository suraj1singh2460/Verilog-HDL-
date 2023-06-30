`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 11:59:55
// Design Name: 
// Module Name: half_adder_gate
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


module half_adder_gate(
input a,
input b,
output sum,
output carry
    );
    and a1(carry, a, b);
    xor o1(sum, a, b);
endmodule
