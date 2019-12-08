`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: University of Thessaly
// Engineer: Viktoria Biliouri
//
// Create Date:   20:28:49 10/23/2018
// Design Name:   FourDigitLEDdriver
// Module Name:   C:/Users/Victoria Biliouris/Desktop/LAB1_2138/LAB1_2138_partD/testbench_partC.v
// Project Name:  LAB1_2138_partD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourDigitLEDdriver
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire an3;
	wire an2;
	wire an1;
	wire an0;
	wire led_a;
	wire led_b;
	wire led_c;
	wire led_d;
	wire led_e;
	wire led_f;
	wire led_g;
	wire dp;

	// Instantiate the Unit Under Test (UUT)
	FourDigitLEDdriver uut (
		.reset(reset), 
		.clk(clk), 
		.an3(an3), 
		.an2(an2), 
		.an1(an1), 
		.an0(an0), 
		.led_a(led_a), 
		.led_b(led_b), 
		.led_c(led_c), 
		.led_d(led_d), 
		.led_e(led_e), 
		.led_f(led_f), 
		.led_g(led_g), 
		.dp(dp)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		#100 reset = 1;
		#500 reset = 0;
	end
   
	always
		#10 clk = !clk;
		
		
endmodule

