`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 12:38:16
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
reg [1:0] s;
wire [3:0] y;

decoder d1(
    .s(s),
    .y(y)
    );
initial begin
s=2'b00;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
end
endmodule
