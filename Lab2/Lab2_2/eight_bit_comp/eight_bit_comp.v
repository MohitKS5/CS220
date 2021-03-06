`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:48 02/05/2018 
// Design Name: 
// Module Name:    eight_bit_comp 
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
module eight_bit_comp(y,pb1,pb2,pb3,pb4,l0,l1,l2);
	input [3:0] y;
	
	input pb1, pb2, pb3, pb4;
	
	wire [7:0] p0, p1, p2;

	output l0, l1, l2;

	reg [7:0] a ,b;
	
	wire l0, l1, l2;
	


	always @(posedge pb1) begin
	  a[3:0] <= y;
	end
	always @(posedge pb2) begin
	  a[7:4] <= y;
	end
	always @(posedge pb3) begin
	  b[3:0] <= y;
	end
	always @(posedge pb4) begin
	  b[7:4] <= y;
	end
	
	comp cm8 (a[7],b[7],1'b0,1'b0,1'b1,p0[7],p1[7],p2[7]);
	comp cm7 (a[6],b[6],p0[7],p1[7],p2[7],p0[6],p1[6],p2[6]);
	comp cm6 (a[5],b[5],p0[6],p1[6],p2[6],p0[5],p1[5],p2[5]);
	comp cm5 (a[4],b[4],p0[5],p1[5],p2[5],p0[4],p1[4],p2[4]);
	comp cm4 (a[3],b[3],p0[4],p1[4],p2[4],p0[3],p1[3],p2[3]);
	comp cm3 (a[2],b[2],p0[3],p1[3],p2[3],p0[2],p1[2],p2[2]);
	comp cm2 (a[1],b[1],p0[2],p1[2],p2[2],p0[1],p1[1],p2[1]);
	comp cm1 (a[0],b[0],p0[1],p1[1],p2[1],l0,l1,l2);//p0[0],p1[0],p2[0]);

	//assign l0 = p0[0];
	//assign l1 = p1[0];
 	//assign l2 = p2[0];

endmodule

