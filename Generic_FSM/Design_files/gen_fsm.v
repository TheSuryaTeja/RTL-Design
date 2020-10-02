module gen_fsm (
	input in,
	input clk,
	input reset,
	input [3:0]seq,
	output out
	);

parameter s0 =0, s1 =1 , s2 = 2 , s3 = 3;
reg [1:0]state;

reg [2:0] temp;
reg flag;

always@(posedge clk)
if(reset)
begin
	state <= 0;
end
else
case(state)

s0 : begin
		flag <= 0;
		temp[2] <= in;
		state <= ( in == seq[3] ) ? s1 :s0;
	 end
s1 : begin
		flag <= 0;
		temp[1] <= in;
		if(in == seq[2])
			state <= s2;
		else if (in == temp[2])
			state <= s1;
		else
			state <= s0;
	 end

s2 : begin
		flag <= 0;
		temp[0] <= in;
		if(in == seq[1])
			state <= s3;
		else if (in == temp[2])
			state <= s1;
		else if ({temp[1],in} == {temp[2],temp[1]})
			state <= s2;
		else
			state <= s0;
	 end

s3 : begin
		flag <= ( in == seq[0] ) ? 1 :0;
		if({temp[2],temp[1],in} == {temp[2],temp[1],temp[0]})
			state <= s3;
		else if ({temp[1],in} == {temp[2],temp[1]})
			state <= s2;
		else if (in == temp[2])
			state <= s1;
		else begin
			state <= s0;
		end	
	 end

default : state <= s0;

endcase

assign out = flag;

endmodule