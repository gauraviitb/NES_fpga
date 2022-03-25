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
    input [15:0] addr,
    inout [7:0] data,
    input rw_n,
    input cs_n
    );

reg [7:0] memory[65535:0];
reg [7:0] temp_data;

always @(posedge clk) begin
	if(cs_n == 0 && rw_n == 0)
		memory[addr] <= data;
	else if (cs_n == 0 && rw_n == 1)
		temp_data <= memory[addr];
end

assign data = (cs_n == 0 && rw_n == 1) ? temp_data : 'hz; 

endmodule
