module tb;

reg clk=0;
reg in;
reg reset;
//reg [3:0] seq;
wire out;

fsm dut (.clk(clk),.in(in),.out(out),.reset(reset));

always
#2 clk = !clk;

initial
begin
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