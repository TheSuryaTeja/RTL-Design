`include "mod_m.v"

module tb;
reg reset, clk=0;
wire [7:0] out;
wire tick;

mod_m inst1 (.reset(reset),.clk(clk),.out(out),.tick(tick));

always 
#1 clk = ~clk;

initial 
begin
#2 reset =1;
#2 reset = 0;
#30 $finish;
end

initial
begin
	$monitor("out = %d , tick = %b",out,tick);
	$dumpfile("lol.vcd");
	$dumpvars(0,tb);
end

endmodule