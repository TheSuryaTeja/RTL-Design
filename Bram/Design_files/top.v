`timescale 1ns / 1ps

module top(
input [7:0]data_in,
input clk,
input enable,
input write_en,
input [3:0] addr,
output [7:0] data_out,
output[7:0]sum,
output c_out
    );
    
reg [7:0]temp=0;

blk_mem_gen_0 bram_instance (
  .clka(clk),    // input wire clka
  .ena(enable),      // input wire ena
  .wea(write_en),      // input wire [0 : 0] wea
  .addra(addr),  // input wire [3 : 0] addra
  .dina(data_in),    // input wire [7 : 0] dina
  .douta(data_out)  // output wire [7 : 0] douta
);

c_addsub_0 adder_instance (
  .A(temp),          // input wire [7 : 0] A
  .B(data_out),          // input wire [7 : 0] B
  .CLK(clk),      // input wire CLK
  .C_OUT(c_out),  // output wire C_OUT
  .S(sum)          // output wire [7 : 0] S
);

always @(data_out)
temp = sum;

endmodule
