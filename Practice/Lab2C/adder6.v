`timescale 1ns / 1ps
`include "adder5.v"
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:01:17 01/15/2018
// Design Name:
// Module Name:    bit_adder
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
module adder6(a,b,sum);
	input [5:0]a,b;
	output[6:0]sum;

	wire [6:0]sum;
	wire [4:0]carry;

	full_adder uut1 (a[0],b[0],1'b0,sum[0],carry[0]);
	full_adder uut2 (a[1],b[1],carry[0],sum[1],carry[1]);
    	full_adder uut3 (a[2],b[2],carry[1],sum[2],carry[2]);
  	full_adder uut4 (a[3],b[3],carry[2],sum[3],carry[3]);
	full_adder uut5 (a[4],b[4],carry[3],sum[4],carry[4]);
	full_adder uut6 (a[5],b[5],carry[4],sum[5],sum[6]);

endmodule
