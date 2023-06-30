
module gray_bin_behav(
input clk,
input [3:0] g,
output reg [3:0] b
);
always @(posedge clk) begin

 b[0]=g[0]^b[1];
 b[1]=g[1]^b[2];
 b[2]=g[2]^b[3];
 b[3]=g[3];
end
endmodule
