`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 12:48:39
// Design Name: 
// Module Name: single_port_rom_tb
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


module single_port_rom_tb;
reg [2:0] addr;
reg en;
reg clk;
reg rstn;
wire [7:0] data_out;

single_port_rom r1(
    .addr(addr),
    .en(en),
    .clk(clk),
    .rstn(rstn),
    .data_out(data_out)
    );
    
initial begin
clk=0; en=0; addr=0; rstn=0;

#10 en=0; addr=0; rstn=1;

#15 en=1; addr=0; rstn=1;

#10 en=1; addr=3'b001; rstn=1;

#10 en=1; addr=3'b011; rstn=1;
#10 en=1; addr=3'b010; rstn=1;
#10 en=1; addr=3'b100; rstn=1;
#10 en=1; addr=3'b101; rstn=1;
end
always begin
    #5 clk= ~clk;
end
endmodule
