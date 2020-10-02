module srff(
	input clk,
	input reset,
	input s,
	input r,
	output reg q
	);

always@(posedge clk or posedge reset)
if(reset)
	q <= 1'b0;
else
	case ({s,r})
	2'b00 	: q <= q;
	2'b01 	: q <= 1'b0;
	2'b10 	: q <= 1'b1;
	default : q <= 1'bx;
	endcase

endmodule
