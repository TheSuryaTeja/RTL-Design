`timescale 1ns / 1ps

module tb;

reg [7:0]data_in;
reg clk=0;
reg enable;
reg write_en;
reg [3:0]addr;
wire [7:0] data_out;
wire [7:0]sum;
wire c_out;

top dut (.clk(clk), .data_in(data_in), .data_out(data_out), 
         .enable(enable), .addr(addr) ,.write_en(write_en), .sum(sum), .c_out(c_out));

always
#2 clk = !clk;

initial
begin
@(negedge clk)
write_en = 1'b1;
enable = 1'b1;
data_in = 8'd1;
addr = 4'd0;


@(negedge clk)
write_en = 1'b1;
data_in = 8'd2;
addr = 4'd1;



@(negedge clk)
write_en = 1'b1;
data_in = 8'd3;
addr = 4'd2;



@(negedge clk)
write_en = 1'b1;
data_in = 8'd4;
addr = 4'd3;



@(negedge clk)
write_en = 1'b1;
data_in = 8'd5;
addr = 4'd4;


@(negedge clk)
enable = 1'b1;
write_en = 1'b0;

@(negedge clk)
enable = 1'b0;
data_in = 8'dx;
addr = 4'dx;

end
endmodule
