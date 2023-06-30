`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 16:13:24
// Design Name: 
// Module Name: d_ff
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


module d_ff(
input d,
input clk,
input rstn,
output reg q
    );
always @(posedge clk, negedge rstn) begin 
    if (!rstn) begin
        q<=0;
    end else begin
        if (d) begin
            q<=1;
        end else begin
            q<=0;
        end
    end
end
            
endmodule
