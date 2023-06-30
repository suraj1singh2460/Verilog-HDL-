`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 17:44:46
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
input s,
input r,
input clk,
input rstn,
output reg q,
output reg q_bar
    );
always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
        q<=0; q_bar<=1;
    end else begin
        case({s,r})
            2'b00: begin
                q<=0; q_bar<=1;
            end
            2'b01: begin
                q<=s; q_bar<=r;
            end
            2'b10: begin
                q<=s; q_bar<=r;
            end
            2'b11: begin
                q<=1'bz; q_bar<=1'bz;
            end
            default: begin
                q<=1'bz; q_bar<=1'bz;
            end
            endcase
     end
 end
endmodule
