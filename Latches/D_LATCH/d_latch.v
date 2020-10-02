module d_latch (
	input enable,
	input d,
	output q,
	output qbar
	);

wire out1,out2;
wire dn;

not nn (dn,d);
and a1 (out1,dn,enable);
and a2 (out2,d,enable);
nor n1 (q,out1,qbar);
nor n2 (qbar,out2,q);

endmodule