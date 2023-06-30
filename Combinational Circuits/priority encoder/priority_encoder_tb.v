`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 17:32:56
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb;
reg en;
reg [7:0] i;
wire [2:0] y;

priority_encoder en1(
    .en(en),
    .i(i),
    .y(y)
    );
initial begin
i=0; en=0;
#10 en=1'b1; i=8'b0100101;
#10 en=1'b1; i=8'b0001100;
#10 en=1'b1; i=8'b1000010;
#10 en=1'b1; i=8'b0110000;
#10 en=1'b1; i=8'b0001001;
#10 en=1'b1; i=8'b0000001;
end
endmodule
