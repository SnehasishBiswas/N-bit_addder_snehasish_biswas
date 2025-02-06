`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 23:04:01
// Design Name: 
// Module Name: N_bit_adder
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


module N_bit_adder(a,b,sum);
parameter N=32;
input [N-1:0] a,b; 
output[N-1:0] sum;

wire carry_out;
wire [N-1:0] carry;
 genvar i;
 generate 
 for(i=0;i<N;i++)
  begin: N_bit_adder
  
 if(i==0)
 half_adder f(a[0],b[0],sum[0],carry[0]);
  else 
 full_adder f(a[i],b[i],sum[i],carry[i]);
   end  
 assign carry_out = carry[N-1];
 endgenerate 
endmodule


module half_adder(x,y,s,c);
input x,y;
output s,c;

assign s=x^y;
assign c=x&y;
endmodule 

module full_adder(x,y,cin,s,c);
input x,y,cin;
output s,c;

assign s=(x^y)^cin;
assign c=(y&cin)|(x&y)|(x&cin);
endmodule
