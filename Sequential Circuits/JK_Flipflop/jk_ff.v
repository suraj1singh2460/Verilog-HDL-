`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 11:04:27
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
    input clk,
    input rstn,
    output reg q,
    output reg q_bar
    );
always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
        q=1'b0; q_bar=1'b1;
    end else begin
        case ({j,k}) 
            2'b00: begin
                q=q; q_bar=q_bar;
            end
            2'b01: begin
                q=1'b0; q_bar=1'b1;
            end
            2'b10: begin
                q=1'b1; q_bar=1'b0;
            end
            2'b11: begin
                q=~q; q_bar=~q_bar;
            end
            default: begin
                q=1'b0; q_bar=1'b1;
            end 
            endcase
        end
end   
endmodule
