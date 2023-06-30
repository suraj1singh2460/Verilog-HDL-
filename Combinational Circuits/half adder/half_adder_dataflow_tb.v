`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 11:48:49
// Design Name: 
// Module Name: half_adder_dataflow_tb
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


module half_adder_dataflow_tb();
reg a;
reg b;
wire sum;
wire carry;

half_adder_dataflow h1(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
    );

	initial begin
		a=1'b0; b=1'b0;
	end
	
	always @(a or b) begin
		#10 a=1'b0; b=1'b1;
		#10 a=1'b1; b=1'b0;
		#10 a=1'b1; b=1'b1;
		#10 a=1'b0; b=1'b0;
	end
	

endmodule
