`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:19 10/23/2018 
// Design Name: 
// Module Name:    TimeCounter 
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

//This module counts the number that clock gets the value 1
//and the times that we should move the message

module TimeCounter(clk, reset, move_number);

input clk, reset;
output move_number;

reg [3:0] move_number;
reg [21:0] time_counter;


always @(posedge clk or posedge reset)
begin
	if (reset)														//if reset is 1 initialize the process
	begin 
		time_counter = 22'b0000000000000000000000;
		move_number = 4'b0000;
	end
	else
	begin
		time_counter = time_counter + 22'b0000000000000000000001;		//every time clock is 1 increase time counter
		if (time_counter == 22'b1111111111111111111111)						//after 1.31421 sec move number increases
		begin
			move_number = move_number + 4'b0001;
			time_counter = 22'b0000000000000000000000;
		end
		else if (move_number == 4'b1111)
		begin
			move_number = 4'b0000;
		end
	end
end


endmodule
