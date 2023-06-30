`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 15:11:09
// Design Name: 
// Module Name: full_adder_dataflow
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


module full_adder_dataflow(
input a,
input b,
input c,
output sum,
output carry
    );
assign sum= a^b^c;
assign carry = (a&b)|(b&c)|(c&a);
endmodule
