`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 16:13:57
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire cout;

ripple_carry_adder rc1(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
    );

initial begin
a=0; b=0; cin=0;
#10 a=4'b0000; b=4'b0101; cin=1'b0;
#10 a=4'b0000; b=4'b0101; cin=1'b1;
#10 a=4'b0011; b=4'b1100; cin=1'b0;
#10 a=4'b1111; b=4'b1111; cin=1'b0;
#10 a=4'b1111; b=4'b1111; cin=1'b1;
end
endmodule
