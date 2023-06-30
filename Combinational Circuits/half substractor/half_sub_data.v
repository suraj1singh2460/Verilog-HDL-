`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 12:24:34
// Design Name: 
// Module Name: half_sub_data
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


module half_sub_data(
    input a,
    input b,
    output diff,
    output borrow
    );

assign diff= a^b;
assign borrow= ~a&b;

endmodule
