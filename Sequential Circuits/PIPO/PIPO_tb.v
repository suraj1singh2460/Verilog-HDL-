`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 13:07:57
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb;
reg [3:0] d;
reg clk;
reg rstn;
wire [3:0] q;

PIPO pi_po(
.d(d),
.clk(clk),
.rstn(rstn),
.q(q)
);

initial begin
clk=1'b0; rstn=1'b0; d=4'b0000;
#10 rstn=1'b1; d=4'b0010;
#10 rstn=1'b1; d=4'b1010;
#10 rstn=1'b1; d=4'b1110;
#10 rstn=1'b1; d=4'b1011;
#10 rstn=1'b1; d=4'b1111;
end

always begin
#5 clk=~clk;
end
endmodule
