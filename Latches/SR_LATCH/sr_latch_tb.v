module sr_latch_tb;

reg enable;
reg s;
reg r;
wire q;
wire qbar;

sr_latch dut (.enable(enable), .s(s), .r(r), .q(q), .qbar(qbar));

initial
begin
	
	#2 enable = 1'b0; s = 1'b0 ; r = 1'b0;
	#2 enable = 1'b0; s = 1'b0 ; r = 1'b1;
	#2 enable = 1'b0; s = 1'b1 ; r = 1'b0;

	#2 enable = 1'b1; s = 1'b0 ; r = 1'b0;
	#2 enable = 1'b1; s = 1'b0 ; r = 1'b1;
	#2 enable = 1'b1; s = 1'b1 ; r = 1'b0;


end

endmodule
