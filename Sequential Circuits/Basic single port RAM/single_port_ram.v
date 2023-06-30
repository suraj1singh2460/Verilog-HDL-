`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 17:32:47
// Design Name: 
// Module Name: single_port_ram
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


module single_port_ram (
    input [7:0] data_in,
	input clk,
	input rstn,
	input wr,
	input en,
	input [2:0] addr,
	output reg [7:0] data_out
	);

reg [7:0] mem [0:7];

always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
	    data_out <= 0;
	end else begin
	    if (en) begin
		    if (wr) begin
			    mem[addr] <= data_in;
			end else begin
			    data_out <= mem[addr];
			end
		end else begin
            data_out <= data_out;
		end
	end
end
endmodule