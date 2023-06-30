`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 12:11:35
// Design Name: 
// Module Name: half_adder_behav_tb
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


module half_adder_behav_tb( );
reg a;
reg b;
wire sum;
wire carry;

half_adder_behav ha(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
    );
    
initial begin
        a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 a=0; b=0;
end
endmodule
