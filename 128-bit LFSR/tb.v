`include "LFSR.v"
`timescale 1ns/1ns

module tb;

reg clk=0;
reg reset,enable;
wire [127:0] out;

LFSR inst1 (.clk(clk),.reset(reset),.enable(enable),.out(out));

always
#1 clk = !clk;

initial
begin
	#1 reset = 1;reset = 0;enable = 1; 
	#15 $finish;
end

initial
begin
	$monitor($time , " out = %d",out);
	$dumpfile("LFSR.vcd");
	$dumpvars(0,tb);
end

endmodule