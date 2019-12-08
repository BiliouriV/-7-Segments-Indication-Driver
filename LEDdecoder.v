`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Thessaly
// Engineer: Viktoria Biliouri
// 
// Create Date:    01:47:17 10/07/2018 
// Design Name: 
// Module Name:    LEDdecoder 
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

//This module decodes the characters that we want to be displayed 
//and combines the characters with the led lights that should be open
//characters : 0123456789abcdEF 

module LEDdecoder(char, LED);

input [3:0] char;
output [6:0] LED;

wire [6:0] LED;
reg led_a, led_b, led_c, led_d, led_e, led_f, led_g;

always @(char)
begin
	if (char == 4'b0000)       //if char is 0000, design number 0 with led lights
	begin 
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b1;
	end
	else if (char == 4'b0001)  //if char is 0001, design number 1 with led lights
	begin
		led_a = 1'b1;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b1;
		led_e = 1'b1;
		led_f = 1'b1;
		led_g = 1'b1;
	end
	else if (char == 4'b0010)  //if char is 0010, design number 2 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b1;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b1;
		led_g = 1'b0;
	end
	else if (char == 4'b0011)  //if char is 0011, design number 3 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b1;
		led_f = 1'b1;
		led_g = 1'b0;
	end
	else if (char == 4'b0100)  //if char is 0100, design number 4 with led lights
	begin
		led_a = 1'b1;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b1;
		led_e = 1'b1;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b0101)	//if char is 0101, design number 5 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b1;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b1;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b0110)  //if char is 0110, design number 6 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b1;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b0111)  //if char is 0111, design number 7 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b1;
		led_e = 1'b1;
		led_f = 1'b1;
		led_g = 1'b1;
	end
	else if (char == 4'b1000)  //if char is 1000, design number 8 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b1001)  //if char is 1001, design number 9 with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b1;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b1010)  //if char is 1010, design character a with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b1;
		led_g = 1'b0;
	end
	else if (char == 4'b1011)  //if char is 1011, design character b with led lights
	begin
		led_a = 1'b1;
		led_b = 1'b1;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else if (char == 4'b1100)  //if char is 1100, design character c with led lights
	begin
		led_a = 1'b1;
		led_b = 1'b1;
		led_c = 1'b1;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b1;
		led_g = 1'b0;
	end
	else if (char == 4'b1101)  //if char is 1101, design character d with led lights
	begin
		led_a = 1'b1;
		led_b = 1'b0;
		led_c = 1'b0;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b1;
		led_g = 1'b0;
	end
	else if (char == 4'b1110) //if char is 1110, design character E with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b1;
		led_c = 1'b1;
		led_d = 1'b0;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b0;
	end
	else							  //if char is 1111, design character F with led lights
	begin
		led_a = 1'b0;
		led_b = 1'b1;
		led_c = 1'b1;
		led_d = 1'b1;
		led_e = 1'b0;
		led_f = 1'b0;
		led_g = 1'b0;
	end
end
	
//combine all the led lights tou 7bit LED

assign LED[6] = led_a;
assign LED[5] = led_b;
assign LED[4] = led_c;
assign LED[3] = led_d;
assign LED[2] = led_e;
assign LED[1] = led_f;
assign LED[0] = led_g;

endmodule
