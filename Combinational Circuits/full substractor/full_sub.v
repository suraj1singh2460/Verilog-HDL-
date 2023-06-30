`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 11:49:13
// Design Name: 
// Module Name: full_sub
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


module full_sub_behav(
    input a,
	input b,
	input bin,
	output reg diff,
	output reg borrow
	);

always @(*) begin
    diff = a^b^bin;
	borrow = (bin&b)|(b&(~a))|((~a)&bin);
end
endmodule