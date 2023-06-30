`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 14:59:47
// Design Name: 
// Module Name: full_sub_data
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



module full_sub_data(
    input a,
	input b,
	input bin,
	output diff,
	output borrow
	);

assign diff = a^b^bin;
assign borrow = (bin&b)|(b&(~a))|((~a)&bin);
endmodule