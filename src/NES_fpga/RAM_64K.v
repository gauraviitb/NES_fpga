`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:26 03/25/2022 
// Design Name: 
// Module Name:    RAM_64K 
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
module RAM_64K(
    input clk,
	 input rst_n,
    input [15:0] addr,
    inout [7:0] data,
    input rw_n,
    input cs_n
    );

reg [7:0] memory[65535:0];
reg [7:0] temp_data;

initial begin
	//Code section
	memory[0] = 16'h10;
	memory[1] = 7;
	memory[2] = 16'h10;
	memory[3] = 3;
	memory[4] = 16'h20;
	memory[5] = 5;
	memory[6] = 6;
	memory[7] = 16'h01;
	memory[8] = 26;
	memory[9] = 16'h20;
	memory[10] = 5;
	memory[11] = 6;
	
	memory[12] = 10;
	memory[13] = 11;
	memory[14] = 12;
	memory[15] = 13;
	memory[16] = 14;
	
	//Data section
	memory[1541] = 16'h40;
	memory[1542] = 16'h10;
	memory[1543] = 2;
end

always @(posedge clk) begin
	if(rst_n == 0) begin
		temp_data <= 'hz;
	end
	else begin
		if(cs_n == 0 && rw_n == 0)
			memory[addr] <= data;
		else if (cs_n == 0 && rw_n == 1)
			temp_data <= memory[addr];
	end
end

assign data = (cs_n == 0 && rw_n == 1) ? temp_data : 'hz; 

endmodule
