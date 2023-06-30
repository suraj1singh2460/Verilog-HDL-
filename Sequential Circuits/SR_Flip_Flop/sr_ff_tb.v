`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 17:45:12
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb;
reg s;
reg r;
reg clk;
reg rstn;
wire q;
wire q_bar;

sr_ff dut(
    .s(s),
    .r(r),
    .clk(clk),
    .rstn(rstn),
    .q(q),
    .q_bar(q_bar)
);

initial begin
clk=1'b0; rstn=1'b0; s=1'b0; r=1'b0;
#10 rstn=1'b0; s=1'b0; r=1'b0;
#10 rstn=1'b1; s=1'b0; r=1'b0;
#10 rstn=1'b1; s=1'b0; r=1'b1;
#10 rstn=1'b1; s=1'b1; r=1'b0;
#10 rstn=1'b1; s=1'b1; r=1'b1;
end

always begin
#5 clk=~clk;
end

endmodule
