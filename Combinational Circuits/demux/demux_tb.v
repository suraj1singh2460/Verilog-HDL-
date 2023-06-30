`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 15:41:13
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;
reg d;
reg [1:0] s;
wire [3:0] y;

demux d1(
    .d(d),
    .s(s),
    .y(y)
    );
initial begin
d=0; s=0;
#10 d=1; s=2'b00;
#10 d=1; s=2'b01;
#10 d=1; s=2'b10;
#10 d=1; s=2'b11;
end
endmodule
