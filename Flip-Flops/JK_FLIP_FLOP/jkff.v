module jkff(
	input clk,
	input reset,
	input j,
	input k,
	output reg q
	);

always@(posedge clk or posedge reset)
if(reset)
	q <= 1'b0;
else
	case ({j,k})
	2'b00 : q <= q;
	2'b01 : q <= 1'b0;
	2'b10 : q <= 1'b1;
	2'b11 : q <= ~q;
	default : q <= q;
	endcase

endmodule
