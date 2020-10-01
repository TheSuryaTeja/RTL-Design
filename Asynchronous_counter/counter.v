module counter(
	input clk,
	input reset,
	output [3:0]count
	);

tff inst1 (.clk(clk),.reset(reset),.t(1'b1),.q(count[0]));
tff inst2 (.clk(count[0]),.reset(reset),.t(1'b1),.q(count[1]));
tff inst3 (.clk(count[1]),.reset(reset),.t(1'b1),.q(count[2]));
tff inst4 (.clk(count[2]),.reset(reset),.t(1'b1),.q(count[3]));

endmodule