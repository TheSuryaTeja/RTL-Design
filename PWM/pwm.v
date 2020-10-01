module pwm (
	input clk,
	input[6:0]duty_cycle, // 1 to 100
	output reg out
	);
reg [6:0] count=0;

always @(posedge clk)
if(count < duty_cycle)
begin
	out <= 1;
	count <= count + 1;
end

else if (count == 100) count <= 0;

else 
begin
	out <= 0;
	count <= count + 1;
end

endmodule
