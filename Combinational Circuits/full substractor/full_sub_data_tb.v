`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 15:04:19
// Design Name: 
// Module Name: full_sub_data_tb
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



module full_sub_data_tb;
    reg a;
	reg b;
	reg bin;
	wire diff;
	wire borrow;
	

full_sub_data fs1(
    .a(a),
	.b(b),
	.bin(bin),
	.diff(diff),
	.borrow(borrow)
	);
	
initial begin

    a=0; b=0; bin=0;
#10 a=0; b=0; bin=1;
#10 a=0; b=1; bin=0;
#10 a=0; b=1; bin=1;
#10 a=1; b=0; bin=0;
#10 a=1; b=0; bin=1;
#10 a=1; b=1; bin=0;
#10 a=1; b=1; bin=1;
#10 a=0; b=0; bin=0;
end
endmodule