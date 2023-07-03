`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 11:20:56
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb;
reg t;
reg clk;
reg rstn;
wire q;
wire q_bar;

t_ff t1(
    .t(t),
    .clk(clk),
    .rstn(rstn),
    .q(q),
    .q_bar(q_bar)
    );

initial begin
t=1'b0; clk=1'b0; rstn=1'b0;
#10 rstn=1'b1; t=1'b0;
#10 rstn=1'b1; t=1'b1;
end
always begin
#5 clk=~clk;
end
endmodule
