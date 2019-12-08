`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:49:16 10/21/2018 
// Design Name: 
// Module Name:    DigitLoader 
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
module DigitLoader(clk, reset, char1, char2, char3, char4, an3, an2, an1, an0, char);

input clk, reset;
input [3:0] char1;
input [3:0] char2;
input [3:0] char3;
input [3:0] char4;
output an3, an2, an1, an0;
output char;
reg an3, an2, an1, an0;
reg [3:0] char;
reg [3:0] counter;

always @(posedge clk or posedge reset)
begin
	if(reset)
	begin 
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = 4'b1111;
		char = char1;
	end
	else if (counter == 4'b1111)		 			//checks if counter is 1111 -> no led can light			
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		char = char1;						//char is 0000 to show number 0 when an3 is on, in 1 circle
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1110)			// checks if counter is 1110 -> an3 is on
	begin
		an3 = 1'b0;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1101)			//checks if counter is 1101 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1100)			//checks if counter is 1100 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		char = char2;						//char is 0001 ready to show number 1 in 2 circles, when an2 is on
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1011)			//checks if counter is 1011 -> no led is on
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 1;
	end
	else if (counter == 4'b1010)			//checks if counter is 1010 -> an2 is on
	begin
		an3 = 1'b1;
		an2 = 1'b0;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1001)			//checks if counter is 1001 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b1000)			//checks if counter is 1000 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		char = char3;						//char is ready to show number 2 in 2 circles, when an1 is on
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0111)			//checks if counter is 0111 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0110)			//checks if counter is 0110 -> an1 is on
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b0;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0101)			//checks if counter is 0101 -> no led can light
	begin 
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0100)			//checks if counter is 0100 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		char = char4;						//char is ready to show number 3 in 2 circles, when an0 is on
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0011)			//checks if counter is 0011 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0010)			//checks if counter is 0010 -> an0 is on
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b0;
		counter = counter - 4'b0001;
	end
	else if (counter == 4'b0001)			//checks if counter is 0001 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		counter = counter - 4'b0001;
	end
	else											//if counter is 0000 -> no led can light
	begin
		an3 = 1'b1;
		an2 = 1'b1;
		an1 = 1'b1;
		an0 = 1'b1;
		char = char1;
		counter = 4'b1111;					//counter should return to initial number 1111
	end
end



endmodule
