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
reg [7:0] A, X, Y, PSW, SP;

//pipeline register
reg [23:0] f_to_d_reg;

//wire
wire [15:0] jump_address;
wire jump_branch_instt = 0;
wire[15:0] load_store_addr, PC_data;
wire [44:0] d_to_e_reg;
wire [7:0] mem_data_out, A_data, X_data, Y_data, PSW_data, SP_data;
wire [2:0] reg_addr;
wire [15:0] reg_data;
wire register_write;

assign addr = (memory_access == 1) ? load_store_addr : PC;
assign rw_n = (memory_access == 1) ? load_store_n : 1;

//Fetch stage
always @(posedge clk) begin
	if (rst_n == 0) begin
		PC = 0;
		A = 0;
		X = 0;
		Y = 0;
		f_to_d_reg = 0;
	end
	else if (halt_f_to_d == 1) begin
	end
	else begin
		if(jump_branch_instt == 0)
			PC = PC + 1;
		else 
			PC = jump_address;
	
	f_to_d_reg[7:0] <= data;
	f_to_d_reg[23:8] <= PC-2;
	end
end

always @(f_to_d_reg) begin
if(flush_f_to_d == 1) begin
	f_to_d_reg = 0;
end
end


always @(posedge reg_write) begin
	case (reg_addr)
	0: begin 
			A = reg_data;
		end
	1: begin 
			X = reg_data;
		end
	2: begin
			Y = reg_data;
		end
	3: begin
			PC = reg_data;
		end
	4: begin
			PSW = reg_data;		
		end
	5: begin
			SP = reg_data;
		end
	endcase
end

assign register_write = A_write || X_write || Y_write || PC_write || PSW_write || SP_write;

always @(posedge register_write) begin
	if(A_write == 1)
			A = A_data;		
	if(X_write == 1)
			X = X_data;
	if(Y_write == 1)
			Y = Y_data;
	if(PC_write == 1)
			PC = PC_data;
	if(PSW_write == 1)
			PSW = PSW_data;
	if(SP_write == 1)
			SP = SP_data;
end

//Decode stage
//determine instt size, addressing mode, Instt type
decode_stage u_decode(clk, rst_n, f_to_d_reg, halt_d_to_e, d_to_e_reg);

//Execute stage
execute_stage u_execute(clk, rst_n, A, X, Y, PSW, SP, data, d_to_e_reg, halt_f_to_d, halt_d_to_e, load_store_addr, mem_data_out, load_store_n, memory_access, reg_addr, reg_write, reg_data, flush_f_to_d, A_data, A_write, X_data, X_write, Y_data, Y_write, PC_data, PC_write, PSW_data, PSW_write, SP_data, SP_write);

endmodule
