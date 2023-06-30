`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 17:33:36
// Design Name: 
// Module Name: single_port_ram_tb
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


module single_port_ram_tb;
reg [7:0] data_in;
reg clk;
reg rstn;
reg wr;
reg en;
reg [2:0] addr;
wire [7:0] data_out;

single_port_ram ram0(
    .data_in(data_in),
	.clk(clk),
	.rstn(rstn),
	.wr(wr),
	.en(en),
	.addr(addr),
	.data_out(data_out)
	);

initial begin
    data_in=0; clk=0; rstn=0; wr=0; en=0; addr=0;
#10 data_in=8'b0; rstn=1; wr=0; en=0; addr=0;
#10 data_in=8'b10101010; rstn=1; wr=1; en=1; addr=3'b000;
#10 data_in=8'b11110000; rstn=1; wr=1; en=1; addr=3'b001;
#10 data_in=8'b11001100; rstn=1; wr=1; en=1; addr=3'b010;
#10 data_in=8'b00110011; rstn=1; wr=1; en=1; addr=3'b011;
#10 data_in=8'b00001111; rstn=1; wr=1; en=1; addr=3'b100;
#10 data_in=8'b01010101; rstn=1; wr=1; en=1; addr=3'b101;
#10 data_in=8'b10010101; rstn=1; wr=1; en=1; addr=3'b110;
#10 data_in=8'b11111111; rstn=1; wr=1; en=1; addr=3'b111;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b000;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b001;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b010;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b011;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b100;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b101;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b110;
#10 data_in=8'b00000000; rstn=1; wr=0; en=1; addr=3'b111;                                  
end                                       

always begin
#5 clk=~clk;
end
endmodule
