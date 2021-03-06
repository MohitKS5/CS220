`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:31 01/15/2018
// Design Name:   two_bit_adder
// Module Name:   /tmp/guest-lClJd0/Desktop/CS220labs/Lab1_3/two_bit_adder/two_bit_adder_top.v
// Project Name:  two_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_bit_adder_top;

	// Inputs
	reg [1:0]a;
	reg [1:0]b;

	// Outputs
	wire cout;
	wire [1:0]sum;

	// Instantiate the Unit Under Test (UUT)
	two_bit_adder uut (
		.a(a), 
		.b(b), 
		.cout(cout), 
		.sum(sum)
	);

	always @(sum or cout) begin
		$display("time=%d: %b + %b = %b, cout= %b\n", $time, a, b,  sum, cout);   
	end

	initial begin
		a = 2'b00; b = 2'b00; 
		#5
		a = 2'b01; b = 2'b00; 
		#5
		a = 2'b01; b = 2'b01; 
		#5
		a = 2'b10; b = 2'b10; 
		#5
		a = 2'b10; b = 2'b00; 
		#5
		a = 2'b10; b = 2'b01; 
		#5
		a = 2'b11; b = 2'b11; 
		#5
		$finish;
	end
      
endmodule

