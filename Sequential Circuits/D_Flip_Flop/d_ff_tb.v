`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 16:48:41
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;
reg d;
reg clk;
reg rstn;
wire q;
d_ff dut(
    .d(d),
    .clk(clk),
    .rstn(rstn),
    .q(q)
);
initial begin
clk=1'b0; rstn=1'b0; d=1'b0;
#10 rstn=1'b1; d=1'b0;
#10 rstn=1'b1; d=1'b1;
end
always begin
#5 clk=~clk;
end
endmodule
