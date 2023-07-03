`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 12:14:23
// Design Name: 
// Module Name: master_slave
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


module master_slave(
    input d,
    input clk,
    input rstn,
    output q
    );
wire clk_sub;
wire q0;
assign clk_sub=~clk;
d_ff master(
    .d(d), 
    .clk(clk),
    .rstn(rstn),
    .q(q0)
    );
d_ff slave(
    .d(q0),
    .clk(clk_sub),
    .rstn(rstn),
    .q(q)
    );
 

endmodule
