`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 12:41:59
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_behav_tb();
reg a, b, c;
wire sum, carry;

full_adder_behav fa(
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
    );
initial begin
a=0; b=0; c=0;
    #10;
a=0; b=0; c=1;
    #10;
a=0; b=1; c=0;
    #10;
a=0; b=1; c=1;
    #10;
a=1; b=0; c=0;
    #10;
a=1; b=0; c=1;
    #10;
a=1; b=1; c=0;
    #10;
a=1; b=1; c=1;
    #10;
a=0; b=0; c=0;
end

endmodule
