module srff_tb;
reg reset = 1'b1;
reg clk = 1'b1;
reg s;
reg r;
wire q;

srff dut (.clk(clk),.reset(reset),.s(s),.r(r),.q(q));

initial
	forever 
	#2 clk = ~clk;

initial
begin
	#5 reset = 1'b0;

	@(negedge clk)
		s = 1'b0; r = 1'b0;

	@(negedge clk)
		s = 1'b0; r = 1'b1;

	@(negedge clk)
		s = 1'b1; r = 1'b0;

	@(negedge clk)
		s = 1'b1; r = 1'b1;
end

endmodule


