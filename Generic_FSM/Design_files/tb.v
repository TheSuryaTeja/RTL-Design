module tb;

reg in;
reg clk=0;
reg reset;
reg [3:0]seq;
wire out;

gen_fsm dut (.clk(clk), .reset(reset), .in(in), .seq(seq), .out(out));

always
#2 clk = !clk;

initial
begin
seq = 4'b0101;
reset = 1;

@(negedge clk) reset = 0;in = 1; // input stream starts from here
@(negedge clk) in = 1 ;
@(negedge clk) in = 0 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 0 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 0 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 0 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 1 ;
@(negedge clk) in = 1 ;
end

endmodule