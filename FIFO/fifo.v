module fifo#(parameter N = 8 , W = 4)(input clk, reset,read_enable,write_enable,
										input [N-1:0] w_data,
										output [N-1:0]r_data,
										output full_flag , empty_flag,
										output reg valid
										);

reg [N-1 : 0] mem [2**W - 1 : 0];
reg [W-1 : 0 ]r_ptr_reg, w_ptr_reg , r_ptr_next,w_ptr_next,w_ptr_succ,r_ptr_succ;
reg full_reg , empty_reg , full_next , empty_next;


always @ (posedge clk or posedge reset)
begin
if(reset)
begin
	r_ptr_reg <= 0;
	w_ptr_reg <= 0;
	full_reg <= 0;
	empty_reg <=1;
	full_next <= 0;
	empty_next <= 0;
	valid <=0;
end
else begin
	r_ptr_reg <= r_ptr_next;
	w_ptr_reg <= w_ptr_next;
	full_reg <= full_next;
	empty_reg <=empty_next;
end
end

always @ *
begin
		r_ptr_succ = r_ptr_reg + 1;
		w_ptr_succ = w_ptr_reg + 1;
		r_ptr_next = r_ptr_reg;
		w_ptr_next = w_ptr_reg;
		full_next = full_reg;
		empty_next <= empty_reg;

case ({read_enable,write_enable})
0 : 	begin
		end

1 : if(!full_reg) //write
		begin
			w_ptr_next = w_ptr_reg + 1;
			empty_next = 0;
			if(w_ptr_succ == r_ptr_reg)
				full_next = 1;
		end

2 : if(!empty_reg) //read
		begin
			r_ptr_next = r_ptr_reg + 1;
			full_next = 0;
			if(r_ptr_succ == w_ptr_reg)
				empty_next = 1;
		end

3 : begin
		r_ptr_next <= r_ptr_reg + 1;
		w_ptr_next <= w_ptr_reg + 1;
	 end
endcase
end

always @(posedge clk)
	if(write_enable && ~full_reg)
		mem[w_ptr_reg] <= w_data;

assign r_data = mem[r_ptr_reg];
assign full_flag = full_reg;
assign empty_flag = empty_reg;
assign vld = w_ptr_next != r_ptr_next;
endmodule






