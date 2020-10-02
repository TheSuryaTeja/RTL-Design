module fsm_tb;

reg clk=1'b1;
wire [2:0]out;

fsm dut (.clk(clk),.out(out));

initial
	forever
	#2 clk = ~clk;

endmodule