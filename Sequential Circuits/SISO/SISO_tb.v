`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 10:56:32
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb;
reg d;
reg clk;
reg rstn;
wire q;

SISO siso0(
.d(d),
.clk(clk),
.rstn(rstn),
.q(q)
);

initial begin
clk=1'b0; rstn=1'b0; d=1'b0;
#10 rstn=1'b1; d=1'b0;    // passing 1100, 1010
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b0;
#20 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
end

always begin
#5 clk=~clk;
end

endmodule
