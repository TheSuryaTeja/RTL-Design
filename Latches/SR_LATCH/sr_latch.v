module sr_latch (
	input enable,
	input s,
	input r,
	output q,
	output qbar
	);

wire out1,out2;

and a1 (out1,r,enable);
and a2 (out2,s,enable);
nor n1 (q,out1,qbar);
nor n2 (qbar,out2,q);

endmodule