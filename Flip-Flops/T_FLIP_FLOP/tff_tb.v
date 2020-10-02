module tb;

reg clk=1'b1;
reg reset=1'b1;
reg t;
wire q;

tff dut (.t(t), .q(q), .clk(clk), .reset(reset));

initial
    forever
        #2 clk = ~clk;
     
 initial
 begin
    #5 reset = 1'b0;
    
    @(negedge clk)
        t = 1'b0;
    @(negedge clk)
        t = 1'b1;
    @(negedge clk)
        t = 1'b0;
    @(negedge clk)
        t = 1'b1;
 end
 
 endmodule