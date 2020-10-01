`timescale 1ns/1ps

module tb;

reg clk=0;
reg [6:0]duty_cycle;
wire out;

pwm dut (.clk(clk),.duty_cycle(duty_cycle),.out(out));

always
#0.5 clk = ~clk;

initial
begin
	duty_cycle = 7'd80;
#500 duty_cycle = 7'd10;
#500 duty_cycle = 7'd50;
#500 duty_cycle = 7'd20;
#500 duty_cycle = 7'd75;
#500 duty_cycle = 7'd100;
#500;
end


endmodule
