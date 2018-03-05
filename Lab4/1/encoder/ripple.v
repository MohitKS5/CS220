`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:03 02/12/2018 
// Design Name: 
// Module Name:    ripple 
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
`timescale 1ns / 1ps

module ripple(clk,rot,dir,led);

input clk,rot,dir;
output [7:0]led;
reg [7:0]led=8'b1;

reg prev=1'b1;

initial begin
	led[0]=1'b1;
end

always @(posedge clk) begin
	prev<=rot;
	if(prev==0 && rot==1) begin
		if (dir==1) begin
			led[1] <= led[0];
			led[2] <= led[1];
			led[3] <= led[2];
			led[4] <= led[3];
			led[5] <= led[4];
			led[6] <= led[5];
			led[7] <= led[6];
			led[0] <= led[7];
		end else begin
			led[7] <= led[0];
			led[0] <= led[1];
			led[1] <= led[2];
			led[2] <= led[3];
			led[3] <= led[4];
			led[4] <= led[5];
			led[5] <= led[6];
			led[6] <= led[7];
		end
	end
end

endmodule
