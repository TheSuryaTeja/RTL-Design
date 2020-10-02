module jkff_tb;
reg reset = 1'b1;
reg clk = 1'b1;
reg j;
reg k;
wire q;

jkff dut (.clk(clk),.reset(reset),.j(j),.k(k),.q(q));

initial
	forever 
	#2 clk = ~clk;

initial
begin
	#5 reset = 1'b0;

	@(negedge clk)
		j = 1'b0; k = 1'b0;

	@(negedge clk)
		j = 1'b0; k = 1'b1;

	@(negedge clk)
		j = 1'b1; k = 1'b0;

	@(negedge clk)
		j = 1'b1; k = 1'b1;
end

endmodule


