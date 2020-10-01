module tb;

reg clk=0;
reg [7:0]a,b;
reg [2:0] sel;
reg [3:0]addr;
wire [8:0]c;
wire [8:0]d_out;

top dut ( .clk(clk), .a(a), .b(b), .c(c), .sel(sel), .addr(addr), .d_out(d_out) );

always 
#2 clk = !clk;

initial
begin
    @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd0;
     addr <=4'd0;
     
     @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd1;
     addr <=4'd1;
     
     @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd2;
     addr <=4'd2;
     
     
     @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd3;
     addr <=4'd3;   
     
     
     @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd4;
     addr <=4'd4;       
     
     
     @(negedge  clk)
     a <= {1'b0,7'd5};
     b <= {1'b1,7'd8};
     sel <= 3'd5;
     addr <=4'd5;           
end

endmodule