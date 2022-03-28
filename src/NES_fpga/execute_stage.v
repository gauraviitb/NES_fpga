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
	 input [7:0] SP,
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
	 output reg flush_f_to_d,
	 output reg [7:0] A_data,
	 output reg A_write,
	 output reg [7:0] X_data,
	 output reg X_write,
	 output reg [7:0] Y_data,
	 output reg Y_write,
	 output reg [15:0] PC_data,
	 output reg PC_write,
	 output reg [7:0] PSW_data,
	 output reg PSW_write,
	 output reg [7:0] SP_data,
	 output reg SP_write
    );

reg [15:0] pc_temp;
reg [7:0] ADL, ADH, temp_A, LSB, MSB;
reg [8:0] IND_Y;
reg [5:0] clk_count = 0, clk_counter = 0;
reg execute_instt = 0;
reg extra_bit;

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
	execute_instt = 1;
end
2: //Immediate mode
begin
	temp_A = d_to_e_reg[7:0];
	execute_instt = 1;
end
3: //Absolute mode
begin
	if(d_to_e_reg[44:39] == 29) //JSR
		begin
			pc_temp = {d_to_e_reg[15:8] , d_to_e_reg[7:0]};
			execute_instt = 1;
		end
	else 
		begin
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			addr_bus = {d_to_e_reg[15:8],d_to_e_reg[7:0]};
		if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
			memory_access = 1;
			if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
			clk_counter = 1;
		end
end
4: //ZP mode
begin
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	addr_bus = {0 , d_to_e_reg[7:0]};
	if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
	memory_access = 1;
			if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
	clk_counter = 1;
end
5: //ZP, x mode
begin
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	addr_bus = {0 , X + d_to_e_reg[7:0]};
		if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
	memory_access = 1;
			if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
	clk_counter = 1;
end
6: //Abs, x mode
begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
			pc_temp = {d_to_e_reg[15:8] , d_to_e_reg[7:0]} + X;
			execute_instt = 1;
		end
		else 
		begin
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			addr_bus = {d_to_e_reg[15:8],d_to_e_reg[7:0]} + X;
		if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
			memory_access = 1;
			if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
			clk_counter = 1;
		end
end
7: //Implied mode
begin
execute_instt = 1;
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
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	ADL = d_to_e_reg[7:0];
	addr_bus = {0,ADL};
	rw_n = 1;
	memory_access = 1;
	clk_count = 4;
	clk_counter = 1;
end

11: //Indirect
begin
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	addr_bus = {d_to_e_reg[15:8] ,d_to_e_reg[7:0]};
	rw_n = 1;
	memory_access = 1;
	clk_count = 5;
	clk_counter = 1;
end

12: //ZP, y
begin
	halt_f_to_d = 1;
	halt_d_to_e = 1;
	addr_bus = {0 , Y + d_to_e_reg[7:0]};
		if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
	memory_access = 1;
		if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
	clk_counter = 1;
end
13: //Abs, y
begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
			pc_temp = {d_to_e_reg[15:8] , d_to_e_reg[7:0]} + Y;
			execute_instt = 1;
		end
		else 
		begin
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			addr_bus = {d_to_e_reg[15:8],d_to_e_reg[7:0]} + Y;
		if(d_to_e_reg[44:39] == 48) //STA
		begin
			rw_n = 0;
			mem_data_out = A;
		end
		else if(d_to_e_reg[44:39] == 49) //STX
		begin
			rw_n = 0;
			mem_data_out = X;
		end
		else if(d_to_e_reg[44:39] == 50) //STY
		begin
			rw_n = 0;
			mem_data_out = Y;
		end
		else 
		begin
			rw_n = 1;
		end
			memory_access = 1;
			if(d_to_e_reg[44:39] == 21 || d_to_e_reg[44:39] == 25) //DEC || INC
				clk_count = 3;
			else
				clk_count = 2;
			clk_counter = 1;
		end
end
endcase

end

//multi-cycle for addressing mode
always@(posedge clk) begin
reg_write = 0;
execute_instt = 0;
halt_f_to_d = 0;
PC_write = 0;
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
	if(d_to_e_reg[44:39] == 29) //JSR
		begin
			 if (clk_counter == 2)
			 begin 
					flush_f_to_d = 0;
			 end
			 else	if (clk_counter == 3)
			 begin 
					halt_d_to_e = 0;
			 end
			end
		else if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
			if (clk_counter == 2)
			begin 
					//temp_A = mem_data_in;
					memory_access = 0;
			end
			else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
		end
	end
	4: //ZP mode
	begin
		if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
		 if (clk_counter == 2)
			 begin 
				//temp_A = mem_data_in;
				memory_access = 0;
			 end
		 else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
		end
	end
	5: //ZP, x mode
	begin
	if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
		 if (clk_counter == 2)
			 begin 
				//temp_A = mem_data_in;
				memory_access = 0;
			 end
		else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
		end
	end
	6: //Abs, x mode
	begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
			 if (clk_counter == 2)
			 begin 
					flush_f_to_d = 0;
			 end
			 else	if (clk_counter == 3)
			 begin 
					halt_d_to_e = 0;
			 end
			end
		else if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
			if (clk_counter == 2)
			begin 
					//temp_A = mem_data_in;
					memory_access = 0;
			end
			else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
		end
	end
	
	7: //Implied mode
	begin
		 if (clk_counter == 2)
		 begin 
				reg_write = 0;
				memory_access = 0;
			if(d_to_e_reg[44:39] == 39 || d_to_e_reg[44:39] == 38 || d_to_e_reg[44:39] == 42 || d_to_e_reg[44:39] == 43) //PLP || PLA
			begin	
				//reg_data = mem_data_in;
				reg_write = 1;
				if(d_to_e_reg[44:39] == 39)
					reg_addr = 4;//PSW
				if(d_to_e_reg[44:39] == 38)
					reg_addr = 0;//A
				if(d_to_e_reg[44:39] == 42) //RTI
				begin
					reg_addr = 4;//PSW
					SP_write = 1;
					SP_data = SP + 1;
					memory_access = 1;
					addr_bus = {16'hff, SP + 1};
					rw_n = 1;
				end
				if(d_to_e_reg[44:39] == 43) //RTS
				begin
					//PC_temp[7:0] = mem_data_in; 
					reg_write = 0;
					SP_write = 1;
					SP_data = SP + 1;
					memory_access = 1;
					addr_bus = {16'hff, SP + 1};
					rw_n = 1;
				end
			end
			else 
			begin
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			end
		 end
		 else if (clk_counter == 3) 
		 begin
			if(d_to_e_reg[44:39] == 42) //RTI
			begin
				reg_write = 0;
				SP_write = 1;
				SP_data = SP + 1;
				//PC_temp[7:0] = mem_data_in;
				memory_access = 1;
				addr_bus = {16'hff, SP + 1};
				rw_n = 1;
			end
			if(d_to_e_reg[44:39] == 43) //RTS
			begin
				//PC_temp[15:8] = mem_data_in; 
				PC_write = 1;
				//PC_data = PC_temp;
				memory_access = 0;
			end
		 end
		 else if (clk_counter == 4) 
		 begin
		 	if(d_to_e_reg[44:39] == 42) //RTI
			begin
			reg_write = 0;
			SP_write = 0;
			//PC_temp[15:8] = mem_data_in ;
			memory_access = 0;
			PC_write = 1;
			//PC_data = PC_temp;
			end
		 end
	end
	
	8: //Relative mode
	begin
		 if (clk_counter == 2)
		 begin 
				flush_f_to_d = 0;
		 end
		 else	if (clk_counter == 3)
		 begin 
				halt_d_to_e = 0;
		 end
	end
	9: //IND, x
	begin
		if (clk_counter == 2)
		begin //LSB = mem_data_in;
				memory_access = 0;
				ADL = ADL + 1;
				addr_bus = {0,ADL};
				rw_n = 1;
				memory_access = 1;
		end
		else if (clk_counter == 3)
		begin 
				if(d_to_e_reg[44:39] == 48) //STA
				begin
					//MSB = mem_data_in;
					memory_access = 0;
					//addr_bus = {MSB,LSB};
					rw_n = 0;
					memory_access = 1;
					mem_data_out = A;
				end
				else begin
					//MSB = mem_data_in;
					memory_access = 0;
					//addr_bus = {MSB,LSB};
					rw_n = 1;
					memory_access = 1;
				end
		end
		else if (clk_counter == 4)
		begin //temp_A = mem_data_in;
				memory_access = 0;
				//execute_instt = 1;
		end
	end
	10: //IND, y
	begin
		if (clk_counter == 2)
		begin //IND_Y = mem_data_in + Y;
				memory_access = 0;
				ADL = ADL + 1;
				addr_bus = {0,ADL};
				rw_n = 1;
				memory_access = 1;
		end
		else if (clk_counter == 3)
		begin //MSB = mem_data_in + IND_Y[8];
				memory_access = 0;
				//addr_bus = {MSB,LSB};
				rw_n = 1;
				memory_access = 1;
		end
		else if (clk_counter == 4)
		begin //temp_A = mem_data_in;
				memory_access = 0;
				//execute_instt = 1;
		end
	end
	
	11: //Indirect
	begin
		if (clk_counter == 2)
		begin
			//ADL = mem_data_in;
			memory_access = 0;
			addr_bus = addr_bus + 1;
			rw_n = 0;
			memory_access = 1;
		end
		if (clk_counter == 3)
		begin
			halt_f_to_d = 0;
			//ADH = mem_data_in;
			memory_access = 0;
			//PC_data = {ADH,ADL};
		end
		if (clk_counter == 4)
		begin 
			flush_f_to_d = 0;
		end
		else	if(clk_counter == 5)
		begin 
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
	end
	
	12: //ZP, y
	begin
		if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
			if (clk_counter == 2)
			 begin 
				//temp_A = mem_data_in;
				memory_access = 0;
			 end
			else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
			end
	end
	13: //Abs, y
	begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
			 if (clk_counter == 2)
			 begin 
					flush_f_to_d = 0;
			 end
			 else	if (clk_counter == 3)
			 begin 
					halt_d_to_e = 0;
			 end
			end
		else if(d_to_e_reg[44:39] == 21) //DEC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;
			end
		end
		else if(d_to_e_reg[44:39] == 25) //INC
		begin 
		if (clk_counter == 3)
			begin 
				memory_access = 0;
				rw_n = 1;
				execute_instt = 1;				
			end
		end
		else begin
			if (clk_counter == 2)
			begin 
					//temp_A = mem_data_in;
					memory_access = 0;
			end
			else if (clk_counter == 3) 
			begin
						memory_access = 0;
						halt_f_to_d = 0;
						halt_d_to_e = 0;
						clk_count = 0;
						clk_counter = 0;
			end
		end
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
	if(d_to_e_reg[44:39] == 29) //JSR
		begin
		end
		else begin
			if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
			begin
			 if (clk_counter == 2)
				 begin 
				  execute_instt = 1;
				 end
			end
			else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else
			begin
				if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						execute_instt = 1;
				end
			end
		end
	end
	4: //ZP mode
	begin
	if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
		begin
		 if (clk_counter == 2)
			 begin 
			  execute_instt = 1;
			 end
		end
		else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
		else
		begin
		 if (clk_counter == 2)
			 begin 
				temp_A = mem_data_in;
				execute_instt = 1;
			 end
		end
	end
	5: //ZP, x mode
	begin
		if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
		begin
		 if (clk_counter == 2)
			 begin 
			  execute_instt = 1;
			 end
		end
		else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
		else
		begin
		 if (clk_counter == 2)
			 begin 
				temp_A = mem_data_in;
				execute_instt = 1;
			 end
		end
	end
	6: //Abs, x mode
	begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
		end
		else begin
			if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
			begin
			 if (clk_counter == 2)
				 begin 
				  execute_instt = 1;
				 end
			end
			else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else
			begin
				if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						execute_instt = 1;
				end
			end
		end
	end
	
	7: //Implied mode
	begin
		 if (clk_counter == 2)
		 begin 
			if(d_to_e_reg[44:39] == 39 || d_to_e_reg[44:39] == 38 || d_to_e_reg[44:39] == 42) //PLP || PLA
			begin	
				reg_data = mem_data_in;
			end
			
			if(d_to_e_reg[44:39] == 43) //RTS
			 begin
				pc_temp[7:0] = mem_data_in; 
			 end
		 end
		 
		 if (clk_counter == 3)
		 begin
			if(d_to_e_reg[44:39] == 39 || d_to_e_reg[44:39] == 38) //PLP || PLA
			begin	
				reg_write = 0;
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			end
			
			if (d_to_e_reg[44:39] == 42) //RTI
			 begin
				pc_temp[7:0] = mem_data_in;
			 end
			 
			if(d_to_e_reg[44:39] == 43) //RTS
			begin
				pc_temp[15:8] = mem_data_in; 
				PC_data = pc_temp;
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			end

		 end
		 
		if (clk_counter == 4) 
		 begin
			 if (d_to_e_reg[44:39] == 42) //RTI
			 begin
				pc_temp[15:8] = mem_data_in ;
				PC_data = pc_temp;
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			 end
		 end
	end
	
	8: //Relative mode
	begin

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
		 	if(d_to_e_reg[44:39] == 48) //STA
				begin
					execute_instt = 1;
				end
			else 
				begin
					temp_A = mem_data_in;
					execute_instt = 1;
				end
		 end
	end
	10: //IND, y
	begin
		if (clk_counter == 2)
				IND_Y = mem_data_in + Y;
		else if (clk_counter == 3)
		 begin 
				 MSB = mem_data_in + IND_Y[8];
				 addr_bus = {MSB,LSB};
		 end
		else if (clk_counter == 4)
		 begin 
				temp_A = mem_data_in;
				execute_instt = 1;
		 end
	end
	
	11: //Indirect
	begin
		if (clk_counter == 2)
		begin
			ADL = mem_data_in;
		end
		if (clk_counter == 3)
		begin
			ADH = mem_data_in;
			execute_instt = 1;
		end
	end
	
	12: //ZP, y
	begin
		if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
		begin
		 if (clk_counter == 2)
			 begin 
			  execute_instt = 1;
			 end
		end
		else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
		else
		begin
			if (clk_counter == 2)
			 begin 
				temp_A = mem_data_in;
				execute_instt = 1;
			 end
		end
	end
	13: //Abs, y
	begin
		if(d_to_e_reg[44:39] == 29) //JSR
		begin
		end
		else begin
			if(d_to_e_reg[44:39] == 48 || d_to_e_reg[44:39] == 49 || d_to_e_reg[44:39] == 50) //STA, STX, STY
			begin
			 if (clk_counter == 2)
				 begin 
				  execute_instt = 1;
				 end
			end
			else if(d_to_e_reg[44:39] == 21) //DEC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A - 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else if(d_to_e_reg[44:39] == 25) //INC
			begin 
			if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						memory_access = 0;
						mem_data_out = temp_A + 1;
						rw_n = 0;
						memory_access = 1;
				end
			end
			else
			begin
				if (clk_counter == 2)
				begin 
						temp_A = mem_data_in;
						execute_instt = 1;
				end
			end
		end
	end
	endcase
end
end



//Execute instt
always @(posedge execute_instt) begin
	case (d_to_e_reg[44:39]) //instt type
	1: begin //ADC
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = temp_A + A;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	2: begin //AND	
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = temp_A & A;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	3: begin	//ASL
		if(d_to_e_reg[35:32] == 1) //Accumulator addressing mode
		begin
			reg_addr = 0;
			reg_data = A << 1;
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		else begin
			memory_access = 1; //A
			rw_n = 0;
			mem_data_out = temp_A <<1;
			clk_count = 3;
		end
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
			if(PSW[1] == 0) //non zero
				begin 
				end
			else 
				begin //zero
						reg_addr = 3; //PC
						reg_write = 1;
						reg_data = pc_temp;
						halt_d_to_e = 1;
						flush_f_to_d = 1;
						clk_count = 3;
						clk_counter = 1;
				end
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
		 
	9: begin //BNE
			if(PSW[1] == 1) //zero
				begin 
				end
			else 
				begin //non-zero
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
		 
	14: begin //CLC
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW & 8'hfe;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	15: begin //CLD
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW & 8'hf7;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	16: begin //CLI
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW & 8'hfb;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		 
	17: begin //CLV
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW & 8'hbf;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end

	18: begin //CMP
			if(temp_A > A)
				reg_data = PSW & 8'h7f; //N = 0
			else if(temp_A < A)
				reg_data = PSW | 8'h80; //N = 1
			else if(temp_A == A)
				reg_data = PSW | 8'h02; //Z = 1
			reg_addr = 4; //PSW
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end		
		
	19: begin //CPX
			if(temp_A > X)
				reg_data = PSW & 8'h7f; //N = 0
			else if(temp_A < X)
				reg_data = PSW | 8'h80; //N = 1
			else if(temp_A == X)
				reg_data = PSW | 8'h02; //Z = 1
			reg_addr = 4; //PSW
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end	
		
	20: begin //CPY
			if(temp_A > Y)
				reg_data = PSW & 8'h7f; //N = 0
			else if(temp_A < Y)
				reg_data = PSW | 8'h80; //N = 1
			else if(temp_A == Y)
				reg_data = PSW | 8'h02; //Z = 1
			reg_addr = 4; //PSW
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end	
		
	21: begin //DEC
			memory_access = 0;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	22: begin //DEX
			reg_addr = 1; //X
			reg_write = 1;
			reg_data = X - 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	23: begin //DEY
			reg_addr = 2; //Y
			reg_write = 1;
			reg_data = Y - 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end

	24: begin //EOR
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = temp_A ^ A;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
				
	25: begin //INC
			memory_access = 0;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	26: begin //INX
			reg_addr = 1; //X
			reg_write = 1;
			reg_data = X + 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	27: begin //INY
			reg_addr = 2; //Y
			reg_write = 1;
			reg_data = Y + 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	29: begin //JMP
				PC_data = {ADH,ADL};
				PC_write = 1;
				halt_d_to_e = 1;
				flush_f_to_d = 1;
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
		 
	30: begin //LDA
			reg_data = temp_A;
			reg_addr = 0; //A
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
	
	31: begin //LDX
			reg_data = temp_A;
			reg_addr = 1; //X
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end	
				 
	32: begin //LDY
			reg_data = temp_A;
			reg_addr = 2; //Y
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	33: begin	//LSR
		if(d_to_e_reg[35:32] == 1) //Accumulator addressing mode
		begin
			reg_addr = 0;
			reg_data = A >> 1;
			reg_write = 1;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		else begin
			memory_access = 1; //A
			rw_n = 0;
			mem_data_out = temp_A >>1;
			clk_count = 3;
		end
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
	
	36: begin //PHA
			mem_data_out = A;
			addr_bus = {8'hff,SP};
			rw_n = 0;
			reg_data = SP - 1;
			reg_write = 1;
			reg_addr = 5; //SP
			memory_access = 1;
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 2;
			clk_counter = 1;
		end
		
	37: begin //PHP
			mem_data_out = PSW;
			addr_bus = {8'hff,SP};
			rw_n = 0;
			reg_data = SP - 1;
			reg_write = 1;
			reg_addr = 5; //SP
			memory_access = 1;
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 2;
			clk_counter = 1;
		end

	38: begin //PLA
			reg_data = SP + 1;
			reg_write = 1;
			reg_addr = 5; //SP
			
			addr_bus = {8'hff,SP + 1};
			rw_n = 1;
			memory_access = 1;
			
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 3;
			clk_counter = 1;
		end	
	
	39: begin //PLP
			reg_data = SP + 1;
			reg_write = 1;
			reg_addr = 5; //SP
			
			addr_bus = {8'hff,SP + 1};
			rw_n = 1;
			memory_access = 1;
			
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 3;
			clk_counter = 1;
		end
	
	40: begin	//ROL
			if(d_to_e_reg[35:32] == 1) //Accumulator addressing mode
			begin
				reg_addr = 0;
				extra_bit = A[7];
				reg_data = A << 1;
				reg_data[0] = extra_bit;
				reg_write = 1;
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			end
			else begin
				memory_access = 1; //A
				rw_n = 0;
				extra_bit = temp_A[7];
				mem_data_out = temp_A <<1;
				mem_data_out[0] = extra_bit;
				clk_count = 3;
			end
		end
		
	41: begin	//ROR
			if(d_to_e_reg[35:32] == 1) //Accumulator addressing mode
			begin
				reg_addr = 0;
				extra_bit = A[0];
				reg_data = A >> 1;
				reg_data[7] = extra_bit;
				reg_write = 1;
				halt_f_to_d = 0;
				halt_d_to_e = 0;
				clk_count = 0;
				clk_counter = 0;
			end
			else 
			begin
				memory_access = 1; //A
				rw_n = 0;
				extra_bit = temp_A[0];
				mem_data_out = temp_A >>1;
				mem_data_out[7] = extra_bit;
				clk_count = 3;
			end
		end
		
	42: begin //RTI
			reg_data = SP + 1;
			reg_write = 1;
			reg_addr = 5; //SP
			
			addr_bus = {8'hff,SP + 1};
			rw_n = 1;
			memory_access = 1;
			
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 4;
			clk_counter = 1;
		 
		 end
		 
	43: begin //RTS
			reg_data = SP + 1;
			reg_write = 1;
			reg_addr = 5; //SP
			
			addr_bus = {8'hff,SP + 1};
			rw_n = 1;
			memory_access = 1;
			
			halt_f_to_d = 1;
			halt_d_to_e = 1;
			clk_count = 3;
			clk_counter = 1;
		 
		 end
		
	44: begin //SBC
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = A - temp_A - ~PSW[0];	
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	45: begin //SEC
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW | ~8'hfe;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	46: begin //SED
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW | ~8'hf7;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	47: begin //SEI
			reg_addr = 4; //PSW
			reg_write = 1;
			reg_data = PSW | ~8'hfb;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	48 || 49 || 50: begin //STA
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			rw_n = 1;
			clk_count = 0;
			clk_counter = 0;
		end
		
		51: begin //TAX
			reg_addr = 1; //X
			reg_write = 1;
			reg_data = A;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
		52: begin //TAY
			reg_addr = 2; //Y
			reg_write = 1;
			reg_data = A;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
		53: begin //TSX
			reg_addr = 1; //X
			reg_write = 1;
			reg_data = SP;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
	  54: begin //TXA
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = X;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
		55: begin //TXS
			reg_addr = 5; //SP
			reg_write = 1;
			reg_data = X;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
		
		56: begin //TYA
			reg_addr = 0; //A
			reg_write = 1;
			reg_data = Y;
			halt_f_to_d = 0;
			halt_d_to_e = 0;
			clk_count = 0;
			clk_counter = 0;
		end
	endcase
end

endmodule
