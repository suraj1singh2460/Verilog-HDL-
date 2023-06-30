`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 12:47:25
// Design Name: 
// Module Name: single_port_rom
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


module single_port_rom(
    input [2:0] addr,
	input en,
	input clk,
	input rstn,
	output reg [7:0] data_out
	);

reg [7:0] mem [0:7];

always @(addr) begin
    case (addr)
	    3'b000: mem[addr] = 8'b00000001;
		3'b001: mem[addr] = 8'b00000010;
		3'b010: mem[addr] = 8'b00000011;
		3'b011: mem[addr] = 8'b00000100;
		3'b100: mem[addr] = 8'b00000101;
		3'b101: mem[addr] = 8'b00000110;
		3'b110: mem[addr] = 8'b00000111;
		3'b111: mem[addr] = 8'b00001000;
		default: mem[addr] = 8'b00000000;
	endcase
end
always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
	    data_out <= 0;
	end else begin
	    if (en) begin
		    data_out <= mem[addr];
		end else begin
		    data_out <= data_out;
		end
	end
end
endmodule
