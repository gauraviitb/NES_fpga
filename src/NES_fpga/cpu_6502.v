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
    output reg[15:0] addr,
    inout [7:0] data,
	 output reg rw_n
    );

reg [15:0] PC = 0;
reg [7:0] A, X, Y;

//pipeline register
reg [23:0] f_to_d_reg;

//temp regs
reg [15:0] load_store_addr = 0;
reg memory_access = 0;
reg load_store_n = 1;

//wire
wire [15:0] jump_address;
wire jump_branch_instt = 0;

//Fetch stage
always @(posedge clk) begin
	if (rst_n == 0) begin
		addr = 0;
		PC = 0;
		A = 0;
		X = 0;
		Y = 0;
		f_to_d_reg = 0;
		rw_n = 1;
	end
	else begin
		if(jump_branch_instt == 0)
			PC = PC + 1;
		else 
			PC = jump_address;
	
	
	if(memory_access == 1)
		addr = load_store_addr;
	else 
		addr = PC;
	
	rw_n = load_store_n;
	end
end

always @(posedge clk) begin
	f_to_d_reg[7:0] <= data;
	f_to_d_reg[23:8] <= PC-2;
end

wire [37:0] d_to_e_reg;
//Decode stage
//determine instt size and addressing mode
decode_stage u_decode(clk, rst_n, f_to_d_reg, d_to_e_reg);

endmodule
