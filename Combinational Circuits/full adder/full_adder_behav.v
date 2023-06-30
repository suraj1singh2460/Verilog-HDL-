`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 15:32:18
// Design Name: 
// Module Name: full_adder_behav
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


module full_adder_behav(
input a,
input b,
input c,
output reg sum,
output reg carry
    );
always @(*) begin
sum = a^b^c;
carry = (a&b)|(b&c)|(c&a);

end
endmodule
