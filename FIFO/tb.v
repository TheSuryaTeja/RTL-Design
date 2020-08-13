`include "fifo.v"

module tb;
reg clk = 0;
reg reset, read_enable , write_enable;
reg [7:0]w_data;
wire [7:0]r_data;
wire full_flag , empty_flag;

fifo inst1 (.clk(clk),.reset(reset),.read_enable(read_enable),.write_enable(write_enable),
			.w_data(w_data),.r_data(r_data),.full_flag(full_flag),.empty_flag(empty_flag));
always
#2 clk = ~clk;

initial
begin
read_enable = 0;
write_enable = 0;
@(negedge clk)
reset = 1;
@(negedge clk)
reset = 0;
@(negedge clk)
write_enable <= 1;w_data <= 8'd10;	
@(negedge clk)
 w_data = 8'd4;
@(negedge clk)
 w_data = 8'd6;
@(negedge clk)
 w_data = 8'd5;
@(negedge clk)
 w_data = 8'd3;
@(negedge clk)
 w_data = 8'd2;
@(negedge clk)
w_data = 8'd1;
@(negedge clk)
 w_data = 8'd9;
@(negedge clk)
read_enable <= 1; 
write_enable <= 0;
@(negedge clk)
read_enable <= 0; 
end

initial
#100 $finish;

initial
begin
$dumpfile("fifo.vcd");
$dumpvars(0,tb);
end

endmodule
