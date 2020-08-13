// asynchronous reset and synchronous enable

module dff(input clk , reset, enable, d , output q);

// d and q are wires...

reg r_reg , r_next;
always @(posedge clk or posedge reset)
if(reset)
	r_reg = 0; // q=0;
else begin
	r_reg <= r_next; ///q = d
end

always @ *
if(enable)
	r_next <= d;
else begin
	r_next <= r_reg;
end

assign q = r_reg;

endmodule





