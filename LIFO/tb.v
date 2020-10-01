`timescale 1ns/1ns

module tb;

reg clk=0;
reg reset;
reg [3:0]data_in;
reg read=0,write=0;
wire [3:0]data_out;
wire full,empty;

LIFO dut (.clk(clk),.reset(reset),.data_in(data_in),.data_out(data_out),
			.read(read),.write(write),.empty(empty),.full(full));

always
#2 clk = !clk;

initial
begin
	@(negedge clk)
	reset = 1;
	@(negedge clk)
	reset = 0;
	@(negedge clk)
	write = 1; data_in = 4'd7;
	@(negedge clk)
	write = 1; data_in = 4'd4;
	@(negedge clk)
	write = 1; data_in = 4'd3;
	@(negedge clk)
	write = 1; data_in = 4'd2;
	@(negedge clk)
	write = 1; data_in = 4'd6;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 1; data_in = 4'd9;read = 0;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 0; read = 1;
	@(negedge clk)
	write = 0; read = 0;
end

endmodule