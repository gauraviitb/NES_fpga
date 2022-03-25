`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:18:28 03/25/2022 
// Design Name: 
// Module Name:    cpu_6502 
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
module cpu_6502(
    input clk,
    input rst_n,
    output [15:0] addr,
    inout [7:0] data,
	 output rw_n
    );

reg [15:0] PC = 0;
reg [7:0] A, X, Y;


//temp regs
reg [15:0] load_store_addr = 0;
reg memory_access = 0;

//Fetch stage
assign addr = (memory_access) ? load_store_addr : PC;

always @(posedge clk) begin
	if (rst_n == 0) begin
		addr = 0;
	end
	else begin
			
	end
end

endmodule
