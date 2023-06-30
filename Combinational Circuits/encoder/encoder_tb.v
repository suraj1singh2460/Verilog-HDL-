`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 14:54:31
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg [7:0] i;
wire [2:0] y;

encoder en1(
    .i(i),
    .y(y)
    );
initial begin
i=0;
#10 i=8'b0100000;
#10 i=8'b0000100;
#10 i=8'b0000010;
#10 i=8'b0010000;
#10 i=8'b0001000;
#10 i=8'b0000001;
end
endmodule
