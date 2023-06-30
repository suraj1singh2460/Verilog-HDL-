`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 11:59:29
// Design Name: 
// Module Name: moore_over_tb
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



module moore_over_tb;
reg data;
reg clk;
reg rstn;
wire detector;
moore_over uut(
.data(data),
.clk(clk),
.rstn(rstn),
.detector(detector)
);
initial begin
clk=1'b0; data=1'b0; rstn=1'b0;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b1;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b0;
#10 rstn=1'b1; data=1'b1;
end
always begin
#5 clk= ~clk;
end
endmodule
