`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Thessaly
// Engineer: Viktoria Biliouri
// 
// Create Date:    02:41:06 10/22/2018 
// Design Name: 
// Module Name:    Memory 
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

//This module stores every character and defines their position
// in accordance with move number counter

module Memory(clk, reset, counter, char1, char2, char3, char4);

input clk, reset;
input [3:0] counter;
output char1, char2, char3, char4;
reg [3:0] character [15:0];
reg [3:0] char1;
reg [3:0] char2;
reg [3:0] char3;
reg [3:0] char4;



always @(posedge clk or posedge reset) 			
begin
	if (reset)									//if reset is 1 initialize values
	begin
		character[0] = 4'b0000;				//memory should have all the characters' values
		character[1] = 4'b0001;
		character[2] = 4'b0010;
		character[3] = 4'b0011;
		character[4] = 4'b0100;
		character[5] = 4'b0101;
		character[6] = 4'b0110;
		character[7] = 4'b0111;
		character[8] = 4'b1000;
		character[9] = 4'b1001;
		character[10] = 4'b1010;
		character[11] = 4'b1011;
		character[12] = 4'b1100;
		character[13] = 4'b1101;
		character[14] = 4'b1110;
		character[15] = 4'b1111;
		char1 = character[0];
		char2 = character[1];
		char3 = character[2];
		char4 = character[3];
	end
	else
	begin
		if (counter == 4'b0000)				//if move_number is 0 initial position of characters
		begin
			char1 = character[0];			//characters 0 1 2 3
			char2 = character[1];
			char3 = character[2];
			char4 = character[3];
		end
		else if (counter == 4'b0001)		//characters 1 2 3 4
		begin
			char1 = character[1];
			char2 = character[2];
			char3 = character[3];
			char4 = character[4];
		end
		else if (counter == 4'b0010)		//characters 2 3 4 5
		begin
			char1 = character[2];
			char2 = character[3];
			char3 = character[4];
			char4 = character[5];
		end
		else if (counter == 4'b0011)		//characters 3 4 5 6
		begin
			char1 = character[3];
			char2 = character[4];
			char3 = character[5];
			char4 = character[6];
		end
		else if (counter == 4'b0100)		//characters 4 5 6 7
		begin
			char1 = character[4];
			char2 = character[5];
			char3 = character[6];
			char4 = character[7];
		end
		else if (counter == 4'b0101)		//characters 5 6 7 8
		begin
			char1 = character[5];
			char2 = character[6];
			char3 = character[7];
			char4 = character[8];
		end
		else if (counter == 4'b0110)		//characters 6 7 8 9
		begin
			char1 = character[6];
			char2 = character[7];
			char3 = character[8];
			char4 = character[9];
		end
		else if (counter == 4'b0111)		//characters 7 8 9 a
		begin
			char1 = character[7];
			char2 = character[8];
			char3 = character[9];
			char4 = character[10];
		end
		else if (counter == 4'b1000)		//characters 8 9 a b
		begin
			char1 = character[8];
			char2 = character[9];
			char3 = character[10];
			char4 = character[11];
		end	
		else if (counter == 4'b1001)		//characters 9 a b c
		begin
			char1 = character[9];
			char2 = character[10];
			char3 = character[11];
			char4 = character[12];
		end
		else if (counter == 4'b1010)		//characters a b c d
		begin
			char1 = character[10];
			char2 = character[11];
			char3 = character[12];
			char4 = character[13];
		end
		else if (counter == 4'b1011)		//characters b c d E
		begin
			char1 = character[11];
			char2 = character[12];
			char3 = character[13];
			char4 = character[14];
		end
		else if (counter == 4'b1100)		//characyers c d E F
			begin
			char1 = character[12];
			char2 = character[13];
			char3 = character[14];
			char4 = character[15];
		end
		else if (counter == 4'b1101)		//characters d E F 0
		begin
			char1 = character[13];
			char2 = character[14];
			char3 = character[15];
			char4 = character[0];
		end
		else if (counter == 4'b1110)		//characters E F 0 1
		begin
			char1 = character[14];
			char2 = character[15];
			char3 = character[0];
			char4 = character[1];
		end
		else
		begin
			char1 = character[15];			//characters F 0 1 2
			char2 = character[0];
			char3 = character[1];
			char4 = character[2];
		end
	end
end

endmodule
