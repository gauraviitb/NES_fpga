`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:43 03/25/2022 
// Design Name: 
// Module Name:    decode_stage 
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
module decode_stage(
    input clk,
    input rst_n,
    input [23:0] f_to_d_reg,
	 input halt_d_to_e,
    output reg [44:0] d_to_e_reg
    );
reg [1:0] instt_size [15:0][14:0];
reg [3:0] addressing_mode [15:0][14:0];
reg [5:0] instt_type [15:0][14:0];

initial begin

			//r  c
			//-->
			//-->
			
//row:0
instt_size[0][0] = 1;
instt_size[0][1] = 2;
instt_size[0][2] = 0;
instt_size[0][3] = 0;
instt_size[0][4] = 0;
instt_size[0][5] = 2;
instt_size[0][6] = 2;
instt_size[0][7] = 0;
instt_size[0][8] = 1;
instt_size[0][9] = 2;
instt_size[0][10] = 1;
instt_size[0][11] = 0;
instt_size[0][12] = 0;
instt_size[0][13] = 3;
instt_size[0][14] = 3;

//row:1
instt_size[1][0] = 2;
instt_size[1][1] = 2;
instt_size[1][2] = 0;
instt_size[1][3] = 0;
instt_size[1][4] = 0;
instt_size[1][5] = 2;
instt_size[1][6] = 2;
instt_size[1][7] = 0;
instt_size[1][8] = 1;
instt_size[1][9] = 3;
instt_size[1][10] = 0;
instt_size[1][11] = 0;
instt_size[1][12] = 0;
instt_size[1][13] = 3;
instt_size[1][14] = 3;

//row:2
instt_size[2][0] = 3;
instt_size[2][1] = 2;
instt_size[2][2] = 0;
instt_size[2][3] = 0;
instt_size[2][4] = 2;
instt_size[2][5] = 2;
instt_size[2][6] = 2;
instt_size[2][7] = 0;
instt_size[2][8] = 1;
instt_size[2][9] = 2;
instt_size[2][10] = 1;
instt_size[2][11] = 0;
instt_size[2][12] = 3;
instt_size[2][13] = 3;
instt_size[2][14] = 3;

//row:3
instt_size[3][0] = 2;
instt_size[3][1] = 2;
instt_size[3][2] = 0;
instt_size[3][3] = 0;
instt_size[3][4] = 0;
instt_size[3][5] = 2;
instt_size[3][6] = 2;
instt_size[3][7] = 0;
instt_size[3][8] = 1;
instt_size[3][9] = 3;
instt_size[3][10] = 0;
instt_size[3][11] = 0;
instt_size[3][12] = 0;
instt_size[3][13] = 3;
instt_size[3][14] = 3;

//row:4
instt_size[4][0] = 1;
instt_size[4][1] = 2;
instt_size[4][2] = 0;
instt_size[4][3] = 0;
instt_size[4][4] = 0;
instt_size[4][5] = 2;
instt_size[4][6] = 2;
instt_size[4][7] = 0;
instt_size[4][8] = 1;
instt_size[4][9] = 2;
instt_size[4][10] = 1;
instt_size[4][11] = 0;
instt_size[4][12] = 3;
instt_size[4][13] = 3;
instt_size[4][14] = 3;

//row:5
instt_size[5][0] = 2;
instt_size[5][1] = 2;
instt_size[5][2] = 0;
instt_size[5][3] = 0;
instt_size[5][4] = 0;
instt_size[5][5] = 2;
instt_size[5][6] = 2;
instt_size[5][7] = 0;
instt_size[5][8] = 1;
instt_size[5][9] = 3;
instt_size[5][10] = 0;
instt_size[5][11] = 0;
instt_size[5][12] = 0;
instt_size[5][13] = 3;
instt_size[5][14] = 3;

//row:6
instt_size[6][0] = 1;
instt_size[6][1] = 2;
instt_size[6][2] = 0;
instt_size[6][3] = 0;
instt_size[6][4] = 0;
instt_size[6][5] = 2;
instt_size[6][6] = 2;
instt_size[6][7] = 0;
instt_size[6][8] = 1;
instt_size[6][9] = 2;
instt_size[6][10] = 1;
instt_size[6][11] = 0;
instt_size[6][12] = 3;
instt_size[6][13] = 3;
instt_size[6][14] = 3;

//row:7
instt_size[7][0] = 2;
instt_size[7][1] = 2;
instt_size[7][2] = 0;
instt_size[7][3] = 0;
instt_size[7][4] = 0;
instt_size[7][5] = 2;
instt_size[7][6] = 2;
instt_size[7][7] = 0;
instt_size[7][8] = 1;
instt_size[7][9] = 3;
instt_size[7][10] = 0;
instt_size[7][11] = 0;
instt_size[7][12] = 0;
instt_size[7][13] = 3;
instt_size[7][14] = 3;

//row:8
instt_size[8][0] = 0;
instt_size[8][1] = 2;
instt_size[8][2] = 0;
instt_size[8][3] = 0;
instt_size[8][4] = 2;
instt_size[8][5] = 2;
instt_size[8][6] = 2;
instt_size[8][7] = 0;
instt_size[8][8] = 1;
instt_size[8][9] = 0;
instt_size[8][10] = 1;
instt_size[8][11] = 0;
instt_size[8][12] = 3;
instt_size[8][13] = 3;
instt_size[8][14] = 3;

//row:9
instt_size[9][0] = 2;
instt_size[9][1] = 2;
instt_size[9][2] = 0;
instt_size[9][3] = 0;
instt_size[9][4] = 2;
instt_size[9][5] = 2;
instt_size[9][6] = 2;
instt_size[9][7] = 0;
instt_size[9][8] = 1;
instt_size[9][9] = 3;
instt_size[9][10] = 1;
instt_size[9][11] = 0;
instt_size[9][12] = 0;
instt_size[9][13] = 3;
instt_size[9][14] = 0;

//row:10
instt_size[10][0] = 2;
instt_size[10][1] = 2;
instt_size[10][2] = 2;
instt_size[10][3] = 0;
instt_size[10][4] = 2;
instt_size[10][5] = 2;
instt_size[10][6] = 2;
instt_size[10][7] = 0;
instt_size[10][8] = 1;
instt_size[10][9] = 2;
instt_size[10][10] = 1;
instt_size[10][11] = 0;
instt_size[10][12] = 3;
instt_size[10][13] = 3;
instt_size[10][14] = 3;

//row:11
instt_size[11][0] = 2;
instt_size[11][1] = 2;
instt_size[11][2] = 0;
instt_size[11][3] = 0;
instt_size[11][4] = 2;
instt_size[11][5] = 2;
instt_size[11][6] = 2;
instt_size[11][7] = 0;
instt_size[11][8] = 1;
instt_size[11][9] = 3;
instt_size[11][10] = 1;
instt_size[11][11] = 0;
instt_size[11][12] = 3;
instt_size[11][13] = 3;
instt_size[11][14] = 3;

//row:12
instt_size[12][0] = 2;
instt_size[12][1] = 2;
instt_size[12][2] = 0;
instt_size[12][3] = 0;
instt_size[12][4] = 2;
instt_size[12][5] = 2;
instt_size[12][6] = 2;
instt_size[12][7] = 0;
instt_size[12][8] = 1;
instt_size[12][9] = 2;
instt_size[12][10] = 1;
instt_size[12][11] = 0;
instt_size[12][12] = 3;
instt_size[12][13] = 3;
instt_size[12][14] = 3;

//row:13
instt_size[13][0] = 2;
instt_size[13][1] = 2;
instt_size[13][2] = 0;
instt_size[13][3] = 0;
instt_size[13][4] = 0;
instt_size[13][5] = 2;
instt_size[13][6] = 2;
instt_size[13][7] = 0;
instt_size[13][8] = 1;
instt_size[13][9] = 3;
instt_size[13][10] = 0;
instt_size[13][11] = 0;
instt_size[13][12] = 0;
instt_size[13][13] = 3;
instt_size[13][14] = 3;

//row:14
instt_size[14][0] = 2;
instt_size[14][1] = 2;
instt_size[14][2] = 0;
instt_size[14][3] = 0;
instt_size[14][4] = 2;
instt_size[14][5] = 2;
instt_size[14][6] = 2;
instt_size[14][7] = 0;
instt_size[14][8] = 1;
instt_size[14][9] = 2;
instt_size[14][10] = 1;
instt_size[14][11] = 0;
instt_size[14][12] = 3;
instt_size[14][13] = 3;
instt_size[14][14] = 3;

//row:15
instt_size[15][0] = 2;
instt_size[15][1] = 2;
instt_size[15][2] = 0;
instt_size[15][3] = 0;
instt_size[15][4] = 0;
instt_size[15][5] = 2;
instt_size[15][6] = 2;
instt_size[15][7] = 0;
instt_size[15][8] = 1;
instt_size[15][9] = 3;
instt_size[15][10] = 0;
instt_size[15][11] = 0;
instt_size[15][12] = 0;
instt_size[15][13] = 3;
instt_size[15][14] = 3;

end

initial begin
//0:no mode, 1: accumulator
//2:Imm, 3: absolute
//4:ZP, 5: ZP,x
//6:ABS,x 7: Implied
//8:Relative, 9: IND,X
//10:IND,Y , 11:Indirect
//12:ZP,Y, 13:ABS,Y


			//r  c
			//-->
			//-->
			
//row:0
addressing_mode[0][0] = 7;
addressing_mode[0][1] = 9;
addressing_mode[0][2] = 0;
addressing_mode[0][3] = 0;
addressing_mode[0][4] = 0;
addressing_mode[0][5] = 4;
addressing_mode[0][6] = 4;
addressing_mode[0][7] = 0;
addressing_mode[0][8] = 7;
addressing_mode[0][9] = 2;
addressing_mode[0][10] = 1;
addressing_mode[0][11] = 0;
addressing_mode[0][12] = 0;
addressing_mode[0][13] = 3;
addressing_mode[0][14] = 3;

//row:1
addressing_mode[1][0] = 8;
addressing_mode[1][1] = 10;
addressing_mode[1][2] = 0;
addressing_mode[1][3] = 0;
addressing_mode[1][4] = 0;
addressing_mode[1][5] = 5;
addressing_mode[1][6] = 5;
addressing_mode[1][7] = 0;
addressing_mode[1][8] = 7;
addressing_mode[1][9] = 13;
addressing_mode[1][10] = 0;
addressing_mode[1][11] = 0;
addressing_mode[1][12] = 0;
addressing_mode[1][13] = 6;
addressing_mode[1][14] = 6;

//row:2
addressing_mode[2][0] = 3;
addressing_mode[2][1] = 9;
addressing_mode[2][2] = 0;
addressing_mode[2][3] = 0;
addressing_mode[2][4] = 4;
addressing_mode[2][5] = 4;
addressing_mode[2][6] = 4;
addressing_mode[2][7] = 0;
addressing_mode[2][8] = 7;
addressing_mode[2][9] = 2;
addressing_mode[2][10] = 1;
addressing_mode[2][11] = 0;
addressing_mode[2][12] = 3;
addressing_mode[2][13] = 3;
addressing_mode[2][14] = 3;

//row:3
addressing_mode[3][0] = 8;
addressing_mode[3][1] = 10;
addressing_mode[3][2] = 0;
addressing_mode[3][3] = 0;
addressing_mode[3][4] = 0;
addressing_mode[3][5] = 5;
addressing_mode[3][6] = 5;
addressing_mode[3][7] = 0;
addressing_mode[3][8] = 7;
addressing_mode[3][9] = 13;
addressing_mode[3][10] = 0;
addressing_mode[3][11] = 0;
addressing_mode[3][12] = 0;
addressing_mode[3][13] = 6;
addressing_mode[3][14] = 6;

//row:4
addressing_mode[4][0] = 7;
addressing_mode[4][1] = 9;
addressing_mode[4][2] = 0;
addressing_mode[4][3] = 0;
addressing_mode[4][4] = 0;
addressing_mode[4][5] = 4;
addressing_mode[4][6] = 4;
addressing_mode[4][7] = 0;
addressing_mode[4][8] = 7;
addressing_mode[4][9] = 2;
addressing_mode[4][10] = 1;
addressing_mode[4][11] = 0;
addressing_mode[4][12] = 3;
addressing_mode[4][13] = 3;
addressing_mode[4][14] = 3;

//row:5
addressing_mode[5][0] = 8;
addressing_mode[5][1] = 10;
addressing_mode[5][2] = 0;
addressing_mode[5][3] = 0;
addressing_mode[5][4] = 0;
addressing_mode[5][5] = 5;
addressing_mode[5][6] = 5;
addressing_mode[5][7] = 0;
addressing_mode[5][8] = 7;
addressing_mode[5][9] = 13;
addressing_mode[5][10] = 0;
addressing_mode[5][11] = 0;
addressing_mode[5][12] = 0;
addressing_mode[5][13] = 6;
addressing_mode[5][14] = 6;

//row:6
addressing_mode[6][0] = 7;
addressing_mode[6][1] = 9;
addressing_mode[6][2] = 0;
addressing_mode[6][3] = 0;
addressing_mode[6][4] = 0;
addressing_mode[6][5] = 4;
addressing_mode[6][6] = 4;
addressing_mode[6][7] = 0;
addressing_mode[6][8] = 7;
addressing_mode[6][9] = 2;
addressing_mode[6][10] = 1;
addressing_mode[6][11] = 0;
addressing_mode[6][12] = 11;
addressing_mode[6][13] = 3;
addressing_mode[6][14] = 3;

//row:7
addressing_mode[7][0] = 8;
addressing_mode[7][1] = 10;
addressing_mode[7][2] = 0;
addressing_mode[7][3] = 0;
addressing_mode[7][4] = 0;
addressing_mode[7][5] = 5;
addressing_mode[7][6] = 5;
addressing_mode[7][7] = 0;
addressing_mode[7][8] = 7;
addressing_mode[7][9] = 13;
addressing_mode[7][10] = 0;
addressing_mode[7][11] = 0;
addressing_mode[7][12] = 0;
addressing_mode[7][13] = 6;
addressing_mode[7][14] = 6;

//row:8
addressing_mode[8][0] = 0;
addressing_mode[8][1] = 9;
addressing_mode[8][2] = 0;
addressing_mode[8][3] = 0;
addressing_mode[8][4] = 4;
addressing_mode[8][5] = 4;
addressing_mode[8][6] = 4;
addressing_mode[8][7] = 0;
addressing_mode[8][8] = 7;
addressing_mode[8][9] = 0;
addressing_mode[8][10] = 2;
addressing_mode[8][11] = 0;
addressing_mode[8][12] = 3;
addressing_mode[8][13] = 3;
addressing_mode[8][14] = 3;

//row:9
addressing_mode[9][0] = 8;
addressing_mode[9][1] = 10;
addressing_mode[9][2] = 0;
addressing_mode[9][3] = 0;
addressing_mode[9][4] = 5;
addressing_mode[9][5] = 5;
addressing_mode[9][6] = 12;
addressing_mode[9][7] = 0;
addressing_mode[9][8] = 7;
addressing_mode[9][9] = 13;
addressing_mode[9][10] = 2;
addressing_mode[9][11] = 0;
addressing_mode[9][12] = 0;
addressing_mode[9][13] = 6;
addressing_mode[9][14] = 0;

//row:10
addressing_mode[10][0] = 2;
addressing_mode[10][1] = 9;
addressing_mode[10][2] = 2;
addressing_mode[10][3] = 0;
addressing_mode[10][4] = 4;
addressing_mode[10][5] = 4;
addressing_mode[10][6] = 4;
addressing_mode[10][7] = 0;
addressing_mode[10][8] = 7;
addressing_mode[10][9] = 2;
addressing_mode[10][10] = 2;
addressing_mode[10][11] = 0;
addressing_mode[10][12] = 3;
addressing_mode[10][13] = 3;
addressing_mode[10][14] = 3;

//row:11
addressing_mode[11][0] = 8;
addressing_mode[11][1] = 10;
addressing_mode[11][2] = 0;
addressing_mode[11][3] = 0;
addressing_mode[11][4] = 5;
addressing_mode[11][5] = 5;
addressing_mode[11][6] = 12;
addressing_mode[11][7] = 0;
addressing_mode[11][8] = 7;
addressing_mode[11][9] = 13;
addressing_mode[11][10] = 2;
addressing_mode[11][11] = 0;
addressing_mode[11][12] = 6;
addressing_mode[11][13] = 6;
addressing_mode[11][14] = 13;

//row:12
addressing_mode[12][0] = 2;
addressing_mode[12][1] = 9;
addressing_mode[12][2] = 0;
addressing_mode[12][3] = 0;
addressing_mode[12][4] = 4;
addressing_mode[12][5] = 4;
addressing_mode[12][6] = 4;
addressing_mode[12][7] = 0;
addressing_mode[12][8] = 7;
addressing_mode[12][9] = 2;
addressing_mode[12][10] = 2;
addressing_mode[12][11] = 0;
addressing_mode[12][12] = 3;
addressing_mode[12][13] = 3;
addressing_mode[12][14] = 3;

//row:13
addressing_mode[13][0] = 8;
addressing_mode[13][1] = 10;
addressing_mode[13][2] = 0;
addressing_mode[13][3] = 0;
addressing_mode[13][4] = 0;
addressing_mode[13][5] = 5;
addressing_mode[13][6] = 5;
addressing_mode[13][7] = 0;
addressing_mode[13][8] = 7;
addressing_mode[13][9] = 13;
addressing_mode[13][10] = 0;
addressing_mode[13][11] = 0;
addressing_mode[13][12] = 0;
addressing_mode[13][13] = 6;
addressing_mode[13][14] = 6;

//row:14
addressing_mode[14][0] = 2;
addressing_mode[14][1] = 9;
addressing_mode[14][2] = 0;
addressing_mode[14][3] = 0;
addressing_mode[14][4] = 4;
addressing_mode[14][5] = 4;
addressing_mode[14][6] = 4;
addressing_mode[14][7] = 0;
addressing_mode[14][8] = 7;
addressing_mode[14][9] = 2;
addressing_mode[14][10] = 2;
addressing_mode[14][11] = 0;
addressing_mode[14][12] = 3;
addressing_mode[14][13] = 3;
addressing_mode[14][14] = 3;

//row:15
addressing_mode[15][0] = 8;
addressing_mode[15][1] = 10;
addressing_mode[15][2] = 0;
addressing_mode[15][3] = 0;
addressing_mode[15][4] = 0;
addressing_mode[15][5] = 5;
addressing_mode[15][6] = 5;
addressing_mode[15][7] = 0;
addressing_mode[15][8] = 7;
addressing_mode[15][9] = 13;
addressing_mode[15][10] = 0;
addressing_mode[15][11] = 0;
addressing_mode[15][12] = 0;
addressing_mode[15][13] = 6;
addressing_mode[15][14] = 6;
end



initial begin
//0:no mode, 1: accumulator
//2:Imm, 3: absolute
//4:ZP, 5: ZP,x
//6:ABS,x 7: Implied
//8:Relative, 9: IND,X
//10:IND,Y , 11:Indirect
//12:ZP,Y, 13:ABS,Y


			//r  c
			//-->
			//-->
			
//row:0
instt_type[0][0] = 11;
instt_type[0][1] = 35;
instt_type[0][2] = 0;
instt_type[0][3] = 0;
instt_type[0][4] = 0;
instt_type[0][5] = 35;
instt_type[0][6] = 3;
instt_type[0][7] = 0;
instt_type[0][8] = 37;
instt_type[0][9] = 35;
instt_type[0][10] = 3;
instt_type[0][11] = 0;
instt_type[0][12] = 0;
instt_type[0][13] = 35;
instt_type[0][14] = 3;

//row:1
instt_type[1][0] = 10;
instt_type[1][1] = 35;
instt_type[1][2] = 0;
instt_type[1][3] = 0;
instt_type[1][4] = 0;
instt_type[1][5] = 35;
instt_type[1][6] = 3;
instt_type[1][7] = 0;
instt_type[1][8] = 14;
instt_type[1][9] = 35;
instt_type[1][10] = 0;
instt_type[1][11] = 0;
instt_type[1][12] = 0;
instt_type[1][13] = 35;
instt_type[1][14] = 3;

//row:2
instt_type[2][0] = 29;
instt_type[2][1] = 2;
instt_type[2][2] = 0;
instt_type[2][3] = 0;
instt_type[2][4] = 7;
instt_type[2][5] = 2;
instt_type[2][6] = 40;
instt_type[2][7] = 0;
instt_type[2][8] = 39;
instt_type[2][9] = 2;
instt_type[2][10] = 40;
instt_type[2][11] = 0;
instt_type[2][12] = 7;
instt_type[2][13] = 2;
instt_type[2][14] = 40;

//row:3
instt_type[3][0] = 8;
instt_type[3][1] = 2;
instt_type[3][2] = 0;
instt_type[3][3] = 0;
instt_type[3][4] = 0;
instt_type[3][5] = 2;
instt_type[3][6] = 40;
instt_type[3][7] = 0;
instt_type[3][8] = 45;
instt_type[3][9] = 2;
instt_type[3][10] = 0;
instt_type[3][11] = 0;
instt_type[3][12] = 0;
instt_type[3][13] = 2;
instt_type[3][14] = 40;

//row:4
instt_type[4][0] = 42;
instt_type[4][1] = 24;
instt_type[4][2] = 0;
instt_type[4][3] = 0;
instt_type[4][4] = 0;
instt_type[4][5] = 24;
instt_type[4][6] = 33;
instt_type[4][7] = 0;
instt_type[4][8] = 36;
instt_type[4][9] = 24;
instt_type[4][10] = 33;
instt_type[4][11] = 0;
instt_type[4][12] = 28;
instt_type[4][13] = 24;
instt_type[4][14] = 33;

//row:5
instt_type[5][0] = 12;
instt_type[5][1] = 24;
instt_type[5][2] = 0;
instt_type[5][3] = 0;
instt_type[5][4] = 0;
instt_type[5][5] = 24;
instt_type[5][6] = 33;
instt_type[5][7] = 0;
instt_type[5][8] = 16;
instt_type[5][9] = 24;
instt_type[5][10] = 0;
instt_type[5][11] = 0;
instt_type[5][12] = 0;
instt_type[5][13] = 24;
instt_type[5][14] = 33;

//row:6
instt_type[6][0] = 43;
instt_type[6][1] = 1;
instt_type[6][2] = 0;
instt_type[6][3] = 0;
instt_type[6][4] = 0;
instt_type[6][5] = 1;
instt_type[6][6] = 41;
instt_type[6][7] = 0;
instt_type[6][8] = 38;
instt_type[6][9] = 1;
instt_type[6][10] = 41;
instt_type[6][11] = 0;
instt_type[6][12] = 28;
instt_type[6][13] = 1;
instt_type[6][14] = 41;

//row:7
instt_type[7][0] = 13;
instt_type[7][1] = 1;
instt_type[7][2] = 0;
instt_type[7][3] = 0;
instt_type[7][4] = 0;
instt_type[7][5] = 1;
instt_type[7][6] = 41;
instt_type[7][7] = 0;
instt_type[7][8] = 47;
instt_type[7][9] = 1;
instt_type[7][10] = 0;
instt_type[7][11] = 0;
instt_type[7][12] = 0;
instt_type[7][13] = 1;
instt_type[7][14] = 41;

//row:8
instt_type[8][0] = 0;
instt_type[8][1] = 48;
instt_type[8][2] = 0;
instt_type[8][3] = 0;
instt_type[8][4] = 50;
instt_type[8][5] = 48;
instt_type[8][6] = 49;
instt_type[8][7] = 0;
instt_type[8][8] = 23;
instt_type[8][9] = 0;
instt_type[8][10] = 54;
instt_type[8][11] = 0;
instt_type[8][12] = 50;
instt_type[8][13] = 48;
instt_type[8][14] = 49;

//row:9
instt_type[9][0] = 4;
instt_type[9][1] = 48;
instt_type[9][2] = 0;
instt_type[9][3] = 0;
instt_type[9][4] = 50;
instt_type[9][5] = 48;
instt_type[9][6] = 49;
instt_type[9][7] = 0;
instt_type[9][8] = 56;
instt_type[9][9] = 48;
instt_type[9][10] = 55;
instt_type[9][11] = 0;
instt_type[9][12] = 0;
instt_type[9][13] = 48;
instt_type[9][14] = 0;

//row:10
instt_type[10][0] = 32;
instt_type[10][1] = 30;
instt_type[10][2] = 31;
instt_type[10][3] = 0;
instt_type[10][4] = 32;
instt_type[10][5] = 30;
instt_type[10][6] = 31;
instt_type[10][7] = 0;
instt_type[10][8] = 52;
instt_type[10][9] = 30;
instt_type[10][10] = 51;
instt_type[10][11] = 0;
instt_type[10][12] = 32;
instt_type[10][13] = 30;
instt_type[10][14] = 31;

//row:11
instt_type[11][0] = 5;
instt_type[11][1] = 30;
instt_type[11][2] = 0;
instt_type[11][3] = 0;
instt_type[11][4] = 32;
instt_type[11][5] = 30;
instt_type[11][6] = 31;
instt_type[11][7] = 0;
instt_type[11][8] = 17;
instt_type[11][9] = 30;
instt_type[11][10] = 53;
instt_type[11][11] = 0;
instt_type[11][12] = 32;
instt_type[11][13] = 30;
instt_type[11][14] = 31;

//row:12
instt_type[12][0] = 20;
instt_type[12][1] = 18;
instt_type[12][2] = 0;
instt_type[12][3] = 0;
instt_type[12][4] = 20;
instt_type[12][5] = 18;
instt_type[12][6] = 21;
instt_type[12][7] = 0;
instt_type[12][8] = 27;
instt_type[12][9] = 18;
instt_type[12][10] = 22;
instt_type[12][11] = 0;
instt_type[12][12] = 20;
instt_type[12][13] = 18;
instt_type[12][14] = 21;

//row:13
instt_type[13][0] = 9;
instt_type[13][1] = 18;
instt_type[13][2] = 0;
instt_type[13][3] = 0;
instt_type[13][4] = 0;
instt_type[13][5] = 18;
instt_type[13][6] = 21;
instt_type[13][7] = 0;
instt_type[13][8] = 15;
instt_type[13][9] = 18;
instt_type[13][10] = 0;
instt_type[13][11] = 0;
instt_type[13][12] = 0;
instt_type[13][13] = 18;
instt_type[13][14] = 21;

//row:14
instt_type[14][0] = 19;
instt_type[14][1] = 44;
instt_type[14][2] = 0;
instt_type[14][3] = 0;
instt_type[14][4] = 19;
instt_type[14][5] = 44;
instt_type[14][6] = 25;
instt_type[14][7] = 0;
instt_type[14][8] = 26;
instt_type[14][9] = 44;
instt_type[14][10] = 34;
instt_type[14][11] = 0;
instt_type[14][12] = 19;
instt_type[14][13] = 44;
instt_type[14][14] = 25;

//row:15
instt_type[15][0] = 6;
instt_type[15][1] = 44;
instt_type[15][2] = 0;
instt_type[15][3] = 0;
instt_type[15][4] = 0;
instt_type[15][5] = 44;
instt_type[15][6] = 25;
instt_type[15][7] = 0;
instt_type[15][8] = 46;
instt_type[15][9] = 44;
instt_type[15][10] = 0;
instt_type[15][11] = 0;
instt_type[15][12] = 0;
instt_type[15][13] = 44;
instt_type[15][14] = 25;
end

initial begin
	d_to_e_reg[38] = 0;
end

reg opcode_fetch = 1;
reg [1:0] count = 0;

always@(posedge clk) begin //f_to_d_reg
	if(rst_n == 0 || f_to_d_reg[7:0] === 8'hzz) begin
		count = 0;
		opcode_fetch = 1;
	end
	else if(halt_d_to_e == 1) begin
	end
	else begin
		if(opcode_fetch == 1) begin
			count = instt_size[(16'hf0 & f_to_d_reg[7:0])>>4][16'h0f & f_to_d_reg[7:0]];
			d_to_e_reg[31:16] = f_to_d_reg[23:8]; // PC
			d_to_e_reg[35:32] = addressing_mode[(16'hf0 & f_to_d_reg[7:0])>>4][16'h0f & f_to_d_reg[7:0]]; // Addressing mode
			d_to_e_reg[44:39] = instt_type[(16'hf0 & f_to_d_reg[7:0])>>4][16'h0f & f_to_d_reg[7:0]]; //Instt type
			d_to_e_reg[37:36] = count; //instt size
			d_to_e_reg[38] = 0; //valid bit
			opcode_fetch = 0;
		end
		else if (count == 1 && d_to_e_reg[37:36] == 2)begin
			d_to_e_reg[7:0] = f_to_d_reg[7:0]; // LSB
		end
		else if (count == 2 && d_to_e_reg[37:36] == 3)begin
			d_to_e_reg[7:0] = f_to_d_reg[7:0]; // LSB
		end
		else if (count == 1 && d_to_e_reg[37:36] == 3)begin
			d_to_e_reg[15:8] = f_to_d_reg[7:0]; // MSB
		end

		
		count = count - 1;
		if(count == 0) begin
			opcode_fetch = 1;
			d_to_e_reg[38] = 1; //valid bit
		end
		end
end

endmodule
