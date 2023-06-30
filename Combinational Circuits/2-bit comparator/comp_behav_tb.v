`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 12:57:48
// Design Name: 
// Module Name: comp_behav_tb
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


module comp_behav_tb;
reg [1:0] a;
reg [1:0] b;
wire greater;
wire lesser;
wire equal;

comp_behav cmp(
.a(a),
.b(b),
.greater(greater),
.lesser(lesser),
.equal(equal)
);

initial begin
a=2'b00; b=2'b00;
#10 a=2'b00; b=2'b01;
#10 a=2'b00; b=2'b10;
#10 a=2'b00; b=2'b11;
#10 a=2'b01; b=2'b00;
#10 a=2'b01; b=2'b01;
#10 a=2'b01; b=2'b10;
#10 a=2'b01; b=2'b11;
#10 a=2'b10; b=2'b00;
#10 a=2'b10; b=2'b01;
#10 a=2'b10; b=2'b10;
#10 a=2'b10; b=2'b11;
#10 a=2'b11; b=2'b00;
#10 a=2'b11; b=2'b01;
#10 a=2'b11; b=2'b10;
#10 a=2'b11; b=2'b11;
end
endmodule
