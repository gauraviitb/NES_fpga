`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:24 03/25/2022 
// Design Name: 
// Module Name:    execute_stage 
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
module execute_stage(
    input clk,
    input rst_n,
	 input [7:0] A,
	 input [7:0] X,
	 input [7:0] Y,
	 input [7:0] PSW,
	 input [7:0] mem_data_in,
    input [44:0] d_to_e_reg,
	 output reg halt_f_to_d,
	 output reg halt_d_to_e,
	 output reg [15:0] addr_bus,
	 output reg [7:0] mem_data_out,
	 output reg rw_n,
	 output reg memory_access,
	 output reg [2:0] reg_addr,
	 output reg reg_write,
	 output reg [15:0] reg_data,
	 output reg flush_f_to_d
    );

reg [15:0] pc_temp;
reg [7:0] ADL, ADH, temp_A, LSB, MSB;
reg [5:0] clk_count = 0, clk_counter = 0;
reg execute_instt = 0;

initial begin
	halt_f_to_d = 0;
	halt_d_to_e = 0;
	flush_f_to_d = 0;
	memory_access = 0;
	rw_n = 0;
	reg_write = 0;
end

//posedge of valid bit
always@(posedge d_to_e_reg[38]) begin
//d_to_e_reg[7:0] LSB
//d_to_e_reg[15:8] MSB
//d_to_e_reg[31:16] PC
//d_to_e_reg[35:32] addressing mode
//d_to_e_reg[37:36] Instt size
//d_to_e_reg[38] valid bit

case (d_to_e_reg[35:32])
1: //Accumulator mode 
begin
end
2: //Immediate mode
begin
end
3: //Absolute mode
begin
	pc_temp = {d_to_e_reg[15:8] , d_to_e_reg[7:0]};
	execute_instt = 1;
end
4: //ZP mode
begin
end
5: //ZP, x mode
begin
end
6: //Abs, x mode
begin
end
7: //Implied mode
begin
end
8: //Relative mode
begin
	pc_temp = d_to_e_reg[7:0] + d_to_e_reg[31:16] + d_to_e_reg[37:36]; // 2nd byte + PC + instt size
	execute_instt = 1;
end
9: //IND, x
begin
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	ADL = X + d_to_e_reg[7:0];
	addr_bus = {0,ADL};
	rw_n = 1;
	memory_access = 1;
	clk_count = 4;
	clk_counter = 1;
end
10: //IND, y
begin
end
11: //Indirect
begin
end
12: //ZP, y
begin
end
13: //Abs, y
begin
end
endcase

end

//multi-cycle for addressing mode
always@(posedge clk) begin
reg_write = 0;
execute_instt = 0;
halt_f_to_d = 0;
if(d_to_e_reg[38] == 1 && clk_count !== 0 && clk_counter !== clk_count) begin
//d_to_e_reg[7:0] LSB
//d_to_e_reg[15:8] MSB
//d_to_e_reg[31:16] PC
//d_to_e_reg[35:32] addressing mode
//d_to_e_reg[37:36] Instt size
//d_to_e_reg[38] valid bit
	clk_counter = clk_counter + 1;
	execute_instt = 0;
	case (d_to_e_reg[35:32])
	1: //Accumulator mode 
	begin
	end
	2: //Immediate mode
	begin
	end
	3: //Absolute mode
	begin
	end
	4: //ZP mode
	begin
	end
	5: //ZP, x mode
	begin
	end
	6: //Abs, x mode
	begin
	end
	7: //Implied mode
	begin
	end
	8: //Relative mode
	begin
	end
	9: //IND, x
	begin
		if (clk_counter == 2)
		begin LSB = mem_data_in;
				memory_access = 0;
				ADL = ADL + 1;
				addr_bus = {0,ADL};
				rw_n = 1;
				memory_access = 1;
		end
		else if (clk_counter == 3)
		begin MSB = mem_data_in;
				memory_access = 0;
				//addr_bus = {MSB,LSB};
				rw_n = 1;
				memory_access = 1;
		end
		else if (clk_counter == 4)
		begin temp_A = mem_data_in;
				memory_access = 0;
				//execute_instt = 1;
		end
	end
	10: //IND, y
	begin
	end
	11: //Indirect
	begin
	end
	12: //ZP, y
	begin
	end
	13: //Abs, y
	begin
	end
	endcase
end
end


//Needed to read mem data in next cycle, for load and store
always@(mem_data_in) begin
if(d_to_e_reg[38] == 1 && clk_count !== 0 && clk_counter !== clk_count+1) begin

	
	case (d_to_e_reg[35:32])
	1: //Accumulator mode 
	begin
	end
	2: //Immediate mode
	begin
	end
	3: //Absolute mode
	begin
		if (clk_counter == 2)
		 begin 
				flush_f_to_d = 0;
				//halt_d_to_e = 0;
		 end
		 else	if (clk_counter == 3)
		 begin 
				//flush_f_to_d = 0;
				halt_d_to_e = 0;
		 end
	end
	4: //ZP mode
	begin
	end
	5: //ZP, x mode
	begin
	end
	6: //Abs, x mode
	begin
	end
	7: //Implied mode
	begin
	end
	8: //Relative mode
	begin
		if (clk_counter == 2)
		 begin 
				flush_f_to_d = 0;
				//halt_d_to_e = 0;
		 end
		 else	if (clk_counter == 3)
		 begin 
				//flush_f_to_d = 0;
				halt_d_to_e = 0;
		 end
	end
	9: //IND, x
	begin
		if (clk_counter == 2)
		 LSB = mem_data_in;
		else if (clk_counter == 3)
		 begin 
				 MSB = mem_data_in;
				 addr_bus = {MSB,LSB};
		 end
		else if (clk_counter == 4)
		 begin 
				temp_A = mem_data_in;
				execute_instt = 1;
		 end
	end
	10: //IND, y
	begin
	end
	11: //Indirect
	begin
	end
	12: //ZP, y
	begin
	end
	13: //Abs, y
	begin
	end
	endcase
end
end



//Execute instt
always @(posedge execute_instt) begin
	case (d_to_e_reg[44:39]) //instt type
	1: begin //ADC
		end
		
	2: begin //AND
		end
		
	3: begin	//ASL
		end
		
	4: begin //BCC
			if(PSW[0] == 1) //carry set
				begin 
				end
			else 
				begin //carry clear
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		 end
		 
	5: begin //BCS
			if(PSW[0] == 0) //carry clear
				begin 
				end
			else 
				begin //carry set
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		 end
		 
	6: begin //BEQ
		end
		
	8: begin //BMI
			if(PSW[7] == 0) //positive
				begin 
				end
			else 
				begin //negative result
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		 end

	10: begin //BPL
			if(PSW[7] == 1) //negative
				begin 
				end
			else 
				begin //positive result
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		 end
		 
	12: begin //BVC
			if(PSW[6] == 1) //overflow set
				begin 
				end
			else 
				begin //overflow clear
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		end
		
	13: begin //BVS
			if(PSW[6] == 0) //overflow clear
				begin 
				end
			else 
				begin //overflow set
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
		 end

	29: begin //JSR
				reg_addr = 3; //PC
				reg_write = 1;
				reg_data = pc_temp;
				halt_d_to_e = 1;
				flush_f_to_d = 1;
				clk_count = 3;
				clk_counter = 1;
		 end
		 
	35: begin //ORA
			reg_data = A | temp_A;
			reg_addr = 0;
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
	endcase
end

endmodule
