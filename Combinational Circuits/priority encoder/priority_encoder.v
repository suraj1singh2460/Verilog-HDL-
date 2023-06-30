`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 17:32:39
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
   input en,
   input [7:0] i,
 output reg [2:0] y
 );
always @(*) begin
  if (en) begin
      if (i[7]) y=3'b111;
      else if (i[6]) y=3'b110;
      else if (i[5]) y=3'b101;
      else if (i[4]) y=3'b100;
      else if (i[3]) y=3'b011;
      else if (i[2]) y=3'b010;
      else if (i[1]) y=3'b001;
      else  y=3'b000;    
  end else begin
  y=3'bz;
  end
 end
endmodule
