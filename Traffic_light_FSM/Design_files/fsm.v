module fsm (
	input clk,
	output reg [2:0] out
	);

localparam RED_LIGHT = 3'b100 , YELLOW_LIGHT = 3'b010 , GREEN_LIGHT = 3'b001; 
localparam S0 = 0, S1 = 1, S2 = 2; 

reg [1:0] state;

always @ (posedge clk)
begin
	case(state)
	S0 : begin out <= GREEN_LIGHT; state <= S1; end
	S1 : begin out <= YELLOW_LIGHT; state <= S2; end
	S2 : begin out <= RED_LIGHT; state <= S0; end
	default : begin out <= RED_LIGHT; state <= S0; end
	endcase
end

endmodule