module tff(
	input clk,
	input reset,
	input t,
	output reg q
	);

//changing negedge clk to posedge clk will give down counter
// reset is asynchronous. (independent of clk)

always @ (negedge clk or posedge reset)
if(reset)
	q<= 1'b0;
else begin
	q <= t ? ~q : q;
end

endmodule