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
	memory[0] = 16'h10;
	memory[1] = 2;
	memory[2] = 16'h10;
	memory[3] = 3;
	memory[4] = 16'h20;
	memory[5] = 5;
	memory[6] = 6;
	memory[7] = 16'h01;
	memory[8] = 8;
	memory[9] = 16'h09;
	memory[10] = 10;
	memory[11] = 11;
	memory[12] = 12;
	memory[13] = 13;
	memory[14] = 14;
	
	
	
	memory[2312] = 14;
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
