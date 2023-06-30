`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 12:53:18
// Design Name: 
// Module Name: half_sub_gate_tb
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


module half_sub_gate_tb;
reg a;
reg b;
wire diff;
wire borrow;

half_sub_gate hs1(
    .a(a),
    .b(b),
    .diff(diff),
    .borrow(borrow)
    );
initial begin
    a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
end
endmodule