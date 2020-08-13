module LFSR (input clk,output [127 : 0] out);

reg [127 :0]in = 128'hffffffffffffffffffffffffffffffff;//starting value
reg temp;

always@(posedge clk)
		begin
		temp = in[127]^in[125]^in[126]^in[120]; //primitive function
		in = {in[126:0],temp};
		end

assign out = in;
endmodule

