module tb;

reg clk=0;
reg in;
reg reset;

reg [3:0] seq;
wire out;

pat dut (.clk(clk),.in(in),.out(out),.seq(seq),.reset(reset));

always
#2 clk = !clk;

initial
begin
    seq = 4'b0110;
    @(negedge clk) reset = 1;
    @(negedge clk) reset = 0;
	@(negedge clk) in = 0;
	@(negedge clk) in = 1;
	@(negedge clk) in = 1;
	@(negedge clk) in = 0;
	@(negedge clk) in = 1;
	@(negedge clk) in = 1;
	@(negedge clk) in = 0;
	@(negedge clk) in = 0;
	@(negedge clk) in = 1;
	@(negedge clk) in = 1;
	@(negedge clk) in = 0;
end

initial
begin
	$dumpfile("lol.vcd");
	$dumpvars(0,tb);
end

endmodule