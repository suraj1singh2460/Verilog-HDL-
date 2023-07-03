`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 11:04:48
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
reg j;
reg k;
reg clk;
reg rstn;
wire q;
wire q_bar;

jk_ff jk(
    .j(j),
    .k(k),
    .clk(clk),
    .rstn(rstn),
    .q(q),
    .q_bar(q_bar)
    );

initial begin
    clk=1'b0; rstn=1'b0; j=1'b0; k=1'b0;
#10 rstn=1'b1; j=1'b0; k=1'b0;    
#10 rstn=1'b1; j=1'b0; k=1'b1;    
#10 rstn=1'b1; j=1'b1; k=1'b0;    
#10 rstn=1'b1; j=1'b1; k=1'b1;    
end

always begin
#5 clk=~clk;
end

endmodule
