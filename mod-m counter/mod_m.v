module mod_m#(parameter N = 8 , m = 5)(input reset,clk,
										output [N-1 : 0] out,
										output tick);
reg [N-1 : 0] r_reg ; 
wire [N-1 : 0]r_next;

always @(posedge clk or posedge reset)
if(reset)
r_reg <= 0;
else begin
	r_reg <= r_next;
end

assign r_next = (r_reg == m-1) ? 0 : r_reg + 1;
assign tick = (r_reg == m-1)?1:0;
assign out = r_reg;

endmodule