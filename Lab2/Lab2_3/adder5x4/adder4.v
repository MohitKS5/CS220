`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:44 02/05/2018 
// Design Name: 
// Module Name:    adder4 
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
module adder4(a,b,sum);
	input [3:0]a,b;
	output[4:0]sum;

	wire [4:0]sum;
	wire [2:0]carry;

	full_adder uut1 (a[0],b[0],1'b0,sum[0],carry[0]);
	full_adder uut2 (a[1],b[1],carry[0],sum[1],carry[1]);
	full_adder uut3 (a[2],b[2],carry[1],sum[2],carry[2]);
	full_adder uut4 (a[3],b[3],carry[2],sum[3],sum[4]);

endmodule
