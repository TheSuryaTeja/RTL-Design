`timescale 1ns / 1ps

module top(
    input clk,
    input [7:0]a,b,
    input [2:0] sel,
    input [3:0]addr,
    output [8:0]c,
    output [8:0]d_out
    );
    
alu inst1 (.a(a),.b(b),.c(c),.sel(sel));

blk_mem_gen_0 inst2 (
  .clka(clk),    // input wire clka
  .wea(1'b1),      // input wire [0 : 0] wea
  .addra(addr),  // input wire [3 : 0] addra
  .dina(c),    // input wire [8 : 0] dina
  .douta(d_out)  // output wire [8 : 0] douta
);
endmodule
