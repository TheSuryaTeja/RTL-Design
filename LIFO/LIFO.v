// Last in First out
// don't read from empty..don't write to full


module LIFO (
input clk,
input reset,
input [3:0]data_in,
input read,write,
output reg [3:0]data_out,
output full,empty
	);

reg [3:0] mem [0:4];
reg [2:0]pointer;

always @(posedge clk)
if(reset)
begin
pointer <=0;
data_out <=0;
end
else begin
	case ({read,write})
	2'b00 : begin end
	2'b01 : if(!full)
			begin
			mem[pointer] <= data_in;
			pointer <= pointer + 1;	
			end
			
	2'b10 : if(!empty)
			begin
			data_out <= mem[pointer-1];
			pointer <= pointer - 1;
			end

	2'b11 : begin	end
	endcase
	end

assign full = (pointer == 3'b101) ? 1'b1 : 1'b0;
assign empty = (pointer == 3'b000) ? 1'b1 : 1'b0;

endmodule