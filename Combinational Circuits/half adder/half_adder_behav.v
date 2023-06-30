`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 12:05:16
// Design Name: 
// Module Name: half_adder_behav
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


module half_adder_behav(
input a,
input b,
output reg sum,
output reg carry
    );
always @(*) begin
    sum = a^b;
    carry = a&b;  
end
endmodule
