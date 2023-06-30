`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 15:11:47
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg [3:0] d;
reg [1:0] s;
wire y;

mux m1(
    .d(d),
    .s(s),
    .y(y)
    );
initial begin
d=0; s=0;
#10 d=4'b0001; s=2'b00;
#10 d=4'b0010; s=2'b01;
#10 d=4'b0100; s=2'b10;
#10 d=4'b1000; s=2'b11;

end

endmodule
