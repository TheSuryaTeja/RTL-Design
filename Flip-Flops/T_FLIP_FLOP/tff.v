module tff(
input clk,
input reset,
input t,
output reg q
);

always@(posedge clk or posedge reset)
begin
    if(reset == 1'b1)
        q <= 1'b0;
    else
       if(t == 1'b1)
        q <= ~q;
       else
       q <= q;
end

endmodule
