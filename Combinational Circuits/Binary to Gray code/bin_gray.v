
module bin_gray(
input [3:0] b,
output [3:0] g
);
assign g[3]= b[3];
assign g[2]= b[3] ^ b[2];
assign g[1]=b[2] ^ b[1];
assign g[0]=b[1] ^ b[0];
endmodule