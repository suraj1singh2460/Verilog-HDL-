`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 17:48:13
// Design Name: 
// Module Name: divide_tb
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



module divide_tb;
reg [3:0] a;
wire [3:0] b;
divide uut(
.a(a),
.b(b)
);
initial begin
a=4'b0000;

#10 a=4'b1010; 
#10 a=4'b0110; 
#10 a=4'b1011; 
#10 a=4'b1111; 

end
endmodule