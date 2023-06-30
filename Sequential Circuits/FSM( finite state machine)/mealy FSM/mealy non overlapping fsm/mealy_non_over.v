`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 13:04:36
// Design Name: 
// Module Name: mealy_non_over
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



module mealy_non_over(
input data,
input clk,
input rstn,
output reg detector
);
 parameter STATE_1=3'b000;
 parameter STATE_2=3'b001;
 parameter STATE_3=3'b010;
 parameter STATE_4=3'b011;
 
 reg [2:0] state;
 
 always @(posedge clk, negedge rstn) begin
    if (!rstn) begin
	    state<= STATE_1;
		detector<=1'b0;
	end else begin
	    case(state)                          // for data 1001
		    STATE_1: begin
			    if (data) begin
				    detector<=1'b0;
					state<=STATE_2;
				end else begin
				    detector<=1'b0;
					state<=STATE_1;
				end
			end
			STATE_2: begin
			    if (data) begin
				    detector<=1'b0;
					state<=STATE_2;
				end else begin
				    detector<=1'b0;
                    state<=STATE_3;
                end
            end
            STATE_3: begin
                if (data) begin
                    detector<=1'b0;
                    state<=STATE_2;
                end else begin
                    detector<=1'b0;
                    state<=STATE_4;
                end
            end
            STATE_4: begin
                if (data) begin
                    detector<=1'b1;
                    state<=STATE_1;
                end else begin
                    detector<=1'b0;
                    state<=STATE_1;
                end
            end
            default: begin
                detector<=1'b0;
                state<=STATE_1;
            end
        endcase
    end
 end
 endmodule