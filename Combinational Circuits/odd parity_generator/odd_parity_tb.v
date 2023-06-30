`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2023 12:14:23
// Design Name: 
// Module Name: odd_parity_tb
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


module odd_parity_tb;
reg [3:0] a;
wire odd_p;
wire [4:0] odd_p_gen;

odd_parity od(
.a(a),
.odd_p(odd_p),
.odd_p_gen(odd_p_gen)
);

initial begin
a=4'b0000;
#10 a=4'b0001;
#10 a=4'b0010;
#10 a=4'b0011;
#10 a=4'b0100;
#10 a=4'b0101;
#10 a=4'b0110;
#10 a=4'b0111;
#10 a=4'b1000;
#10 a=4'b1001;
#10 a=4'b1010;
#10 a=4'b1011;
#10 a=4'b1100;
#10 a=4'b1101;
#10 a=4'b1110;
#10 a=4'b1111;
end
endmodule 