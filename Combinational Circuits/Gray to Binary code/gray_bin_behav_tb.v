
module gray_bin_behav_tb;
reg clk;
reg [3:0] g;
wire [3:0] b;
gray_bin_behav gb(
.clk,
.g(g),
.b(b)
);
initial begin 
clk=0; g=0;
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
always begin
#5 clk= ~clk;
end
endmodule
