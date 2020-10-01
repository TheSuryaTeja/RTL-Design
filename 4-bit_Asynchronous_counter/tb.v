module tb;

reg clk=0;
reg reset;
wire [3:0]count;

always
#2 clk = ~clk;

counter dut (.clk(clk),.reset(reset),.count(count));

initial
begin
	@(negedge clk)
	reset <= 1;

	@(negedge clk)
	reset <= 0;
end

endmodule