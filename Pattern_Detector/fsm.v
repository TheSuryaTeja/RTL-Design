// 0110

module fsm (
input in,clk,reset,
output reg out
	);

parameter s0=0, s1=1, s2=2, s3=3;
reg [1:0] PS, NS;

always @(posedge clk)
if(reset)
begin
	PS <= s0;
end
else begin
	PS <= NS;
end

always @ (PS,in)

case (PS)
	s0 : begin
			out <=0;
			NS <= in ? s0 : s1;
		 end

	s1 : begin
			out <= 0;
			NS <= in ? s2 : s1;
		 end

	s2 : begin
			out <= 0;
			NS <= in ? s3 : s1;
		 end

	s3 : begin
			out <= in ? 0 : 1;
			NS <= in ? s0 : s1;
		 end
		 
    default :  begin
			out <=0;
			NS <= in ? s0 : s1;
		 end

endcase
endmodule 


