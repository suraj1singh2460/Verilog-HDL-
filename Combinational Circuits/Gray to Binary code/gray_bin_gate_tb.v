
module gray_bin_gate_tb;
reg [3:0] g;
wire [3:0] b;
gray_bin_gate gb(
.g(g),
.b(b)
);
initial begin 
 g=0;
#40 g=4'b0001;
#10 g=4'b0010;
#10 g=4'b0011;
#10 g=4'b0100;
#10 g=4'b0101;
#10 g=4'b0110;
#10 g=4'b0111;
#10 g=4'b1000;
#10 g=4'b1001;
#10 g=4'b1010;
#10 g=4'b1011;
end
endmodule
