`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 11:20:32
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input clk,
    input rstn,
    output reg q,
    output reg q_bar
    );
always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
        q=1'b0; q_bar=1'b1;
    end else begin
        if (t) begin
            q=~q; q_bar=~q_bar;
        end else begin
            q=1'b0; q_bar=1'b1;
        end 
    end
end
endmodule
