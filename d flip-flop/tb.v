`include "dff.v"

module tb;

reg clk=0 , reset , enable , d;
wire out;

dff inst1 (.clk(clk),.reset(reset),.enable(enable),.d(d),.q(out));

always 
#1 clk = ~clk;

initial 
begin
#2 reset = 1;
#2 d = 1;
#2 reset = 0;
#2 enable = 1;
#4 $finish;	
end

initial
begin
$monitor("reset = %b | enable = %b | d = %b | q = %b",reset,enable,d,out);
$dumpfile("dff.vcd");
$dumpvars(0,tb);
end

endmodule