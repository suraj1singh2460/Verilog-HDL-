
module bin_gray_behav(
input [3:0] b,
output reg [3:0] g
);
always @(*) begin
g[3]= b[3];
g[2]= b[3] ^ b[2];
g[1]=b[2] ^ b[1];
g[0]=b[1] ^ b[0];
end
endmodule