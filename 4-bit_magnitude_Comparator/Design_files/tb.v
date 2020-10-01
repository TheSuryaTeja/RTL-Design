module tb;

reg [3:0] a,b;
wire less,greater,equal;

comp dut (.a(a),.b(b),.less(less),.greater(greater),.equal(equal));

initial
begin
	#2 a = 7; b = 7;
	#2 a = 2; b = 2;
    #2 a = 0; b = 0;
    #2 a = 1; b = 3;
	#2 a = 7; b = 5;
	#2 a = 10; b = 2;
	#2 a = 14; b = 9;
	#2 a = 15; b = 15;
	#2 a = 4; b = 15;
	#2 a = 8; b = 5;
end

initial
$monitor("a = %d | b = %d  | less = %b | greater = %b | equal = %b ",a,b,less,greater,equal);


endmodule