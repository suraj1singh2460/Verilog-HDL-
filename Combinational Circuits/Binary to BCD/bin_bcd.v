`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2023 11:51:32
// Design Name: 
// Module Name: bin_bcd
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


module bin_bcd(
input [7:0] bin,
output reg [7:0] bcd
);
integer i;
always @(bcd) begin
bcd=0;
for(i=0;i<8;i=i+1) begin
case(bcd[3:0])
4'd5: bcd[3:0] = bcd[3:0] + 2'b11;
4'd6: bcd[3:0] = bcd[3:0] + 2'b11;
4'd7: bcd[3:0] = bcd[3:0] + 2'b11;
4'd8: bcd[3:0] = bcd[3:0] + 2'b11;
4'd9: bcd[3:0] = bcd[3:0] + 2'b11;
4'd9: bcd[3:0] = bcd[3:0] + 2'b11;
endcase
case(bin[7:4])
4'd5: bcd[7:4] = bcd[7:4] + 2'b11;
4'd6: bcd[7:4] = bcd[7:4] + 2'b11;
4'd7: bcd[7:4] = bcd[7:4] + 2'b11;
4'd8: bcd[7:4] = bcd[7:4] + 2'b11;
4'd9: bcd[7:4] = bcd[7:4] + 2'b11;
4'd9: bcd[7:4] = bcd[7:4] + 2'b11;
endcase
bcd={bcd[7:0],bin[7-i]};
end
end
endmodule