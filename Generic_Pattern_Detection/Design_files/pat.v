module pat (
	input in,clk,
	input [3:0]seq,
	input reset,
	output reg out
	);

reg [3:0]temp;

always @(posedge clk)
if(reset)
out<=0;
else
begin
temp = temp << 1;
temp[0] = in;
end

always @(posedge clk)
out = (temp == seq) ? 1 : 0;

endmodule
