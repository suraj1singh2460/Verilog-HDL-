`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 12:57:23
// Design Name: 
// Module Name: comp_behav
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


module comp_behav(
input [1:0] a,
input [1:0] b,
output reg greater,
output reg lesser,
output reg equal
);

always @(*) begin
if (a==b) begin
greater=0; lesser=0; equal=1;
end
if (a<b) begin
greater=0; lesser=1; equal=0;
end
if (a>b) begin
greater=1; lesser=0; equal=0;
end
end
endmodule
