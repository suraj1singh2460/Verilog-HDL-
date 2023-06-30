module bin_gray_gate(
input [3:0] b,
output [3:0] g
    );
    
    wire [3:0] x;
assign x[3]=b[3];
xor (x[2], b[3], b[2]);
xor (x[1], b[2], b[1]);
xor (x[0], b[1], b[0]);

//assign x[2] = b[3] ^ b[2];
//assign x[1] = b[2] ^ b[1];
//assign x[0] = b[1] ^ b[0];

assign g = x;
endmodule
