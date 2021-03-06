`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:09 03/19/2018 
// Design Name: 
// Module Name:    complement_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module complement_adder(a,b,c,op,sum,carry);
input a,b,c,op;
output sum, carry;

wire sum, carry;

assign sum = a^b^c^op;
assign carry = ((a&(b^op))|((b^op)&c)|(c&a));

endmodule
