`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 17:58:30
// Design Name: 
// Module Name: signed_multiply_tb
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



module signed_multiply_tb;
reg [3:0] a;
wire [3:0] b;
wire overflow;
signed_multiply dut(
.a(a),
.b(b),
.overflow(overflow)
);
initial begin
a=4'b0000;

#10 a=4'b1010; 
#10 a=4'b0110; 
#10 a=4'b1011; 
#10 a=4'b1111; 

end
endmodule
