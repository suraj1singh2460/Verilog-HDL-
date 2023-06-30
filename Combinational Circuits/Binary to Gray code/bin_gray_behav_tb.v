
module bin_gray_behav_tb;
reg [3:0] b;
wire [3:0] g;
bin_gray_behav dut(
.b(b),
.g(g)
);
initial begin 
b=4'b0000;
#10 b=4'b0010;
#10 b=4'b0011;
#10 b=4'b0100;
#10 b=4'b0101;
#10 b=4'b0110;
#10 b=4'b0111;
#10 b=4'b1000;
#10 b=4'b1001;
#10 b=4'b1010;
#10 b=4'b1011;
end
endmodule