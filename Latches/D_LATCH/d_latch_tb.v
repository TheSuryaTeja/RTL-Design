module d_latch_tb;

reg enable;
reg d;
wire q;
wire qbar;

d_latch dut (.enable(enable), .d(d), .q(q), .qbar(qbar));

initial
begin
	
	#2 enable = 1'b0; d = 1'b0;
	#2 enable = 1'b0; d = 1'b1;

	#2 enable = 1'b1; d = 1'b0;
	#2 enable = 1'b1; d = 1'b1;

end

endmodule
