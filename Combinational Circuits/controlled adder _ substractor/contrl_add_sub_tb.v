`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 11:23:18
// Design Name: 
// Module Name: contrl_add_sub_tb
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


module contrl_add_sub_tb;
reg [3:0] a;
reg [3:0] b;
reg ctrl;
wire [3:0] s;
wire cout;

contrl_add_sub rc1(
    .a(a),
    .b(b),
    .ctrl(ctrl),
    .s(s),
    .cout(cout)
    );

initial begin
a=0; b=0; ctrl=0;
#10 a=4'b0000; b=4'b0101; ctrl=1'b0;
#10 a=4'b0000; b=4'b0101; ctrl=1'b1;
#10 a=4'b0011; b=4'b1100; ctrl=1'b0;
#10 a=4'b1111; b=4'b1111; ctrl=1'b0;
#10 a=4'b1111; b=4'b1111; ctrl=1'b1;
end
endmodule
