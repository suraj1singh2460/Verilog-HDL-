`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 12:16:36
// Design Name: 
// Module Name: master_slave_tb
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


module master_slave_tb;
reg d;
reg clk;
reg rstn;
wire q;

master_slave ms1(
.d(d),
.clk(clk),
.rstn(rstn),
.q(q)
);
initial begin
d=1'b0; clk=1'b0; rstn=1'b0; 
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
#10;
end
always begin
#5 clk=~clk;
end
endmodule
