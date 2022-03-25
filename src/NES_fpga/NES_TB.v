`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:12 03/25/2022 
// Design Name: 
// Module Name:    NES_TB 
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
module NES_TB(
    );
reg clk, cs_n;
wire [15:0] addr;
wire [7:0] data;

RAM_64K ram(clk, addr, data, rw_n, cs_n);
cpu_6502 uprocessor(clk, rst_n, addr, data, rw_n);


initial begin
	cs_n = 0;
	rst_n = 0;
	#25;
	rst_n = 1;
end

initial begin
	clk = 0;
	forever begin
		#10 clk = ~clk;
	end
end

endmodule
