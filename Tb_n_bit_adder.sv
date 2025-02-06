`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 23:13:39
// Design Name: 
// Module Name: Tb_n_bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_n_bit_adder();
reg [31:0] a;
reg [31:0] b;
wire [31:0] sum;

N_bit_adder uut (.a(a),.b(b),.sum(sum));

initial begin 
a=1209;
b=4565;
#100;
end
endmodule
