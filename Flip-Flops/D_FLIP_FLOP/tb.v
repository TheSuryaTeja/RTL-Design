module tb;

reg d;
reg clk=1'b1;
reg reset=1'b1;
wire q;

dff dut (.d(d),.clk(clk),.reset(reset),.q(q));

initial
	forever
	#2 clk = ~clk;

initial
	begin
		#5 reset = 1'b0;

		@(negedge clk)
			d = 1'b0;
		@ (negedge clk)
			d = 1'b1;	
	end

endmodule

