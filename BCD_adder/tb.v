`timescale 1ns/1ns

module tb;

reg [3:0]a,b;
reg carry_in;
wire [3:0]sum;
wire carry_out;

bcd_adder dut (.a(a),.b(b),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));

initial
begin
#2 a=4'd2;b=4'd5;carry_in = 1'b0;
#2 a=4'd7;b=4'd7;carry_in = 1'b0;
#2 a=4'd8;b=4'd2;carry_in = 1'b1;
#2 a=4'd2;b=4'd0;carry_in = 1'b0;
#2 a=4'd1;b=4'd3;carry_in = 1'b1;
#2 a=4'd9;b=4'd5;carry_in = 1'b1;

end

initial
$monitor("a = %d | b = %d | carry_in = %d | sum = %d | carry_out = %d",a,b,carry_in,sum,carry_out);


endmodule