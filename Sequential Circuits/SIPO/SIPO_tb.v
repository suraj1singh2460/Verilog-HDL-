`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 11:31:54
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb;
reg d;
reg clk;
reg rstn;
wire [3:0] q;

SIPO sipo0(
.d(d),
.clk(clk),
.rstn(rstn),
.q(q)
);
initial begin
clk=1'b0; rstn=1'b0; d=1'b0;
#10 rstn=1'b1; d=1'b0; //passing 1101 1010 1111
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b1;
#20 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#20 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b1;
end
always begin
#5 clk=~clk;
end
endmodule
