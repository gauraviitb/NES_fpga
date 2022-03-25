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
    output [23:0] d_to_e_reg
    );
reg [1:0] instt_size [15:0][14:0];
reg [3:0] addressing_mode [15:0][14:0];

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

			//r  c
			//-->
			//-->
			
//row:0
addressing_mode[0][0] = 1;
addressing_mode[0][1] = 2;
addressing_mode[0][2] = 0;
addressing_mode[0][3] = 0;
addressing_mode[0][4] = 0;
addressing_mode[0][5] = 2;
addressing_mode[0][6] = 2;
addressing_mode[0][7] = 0;
addressing_mode[0][8] = 1;
addressing_mode[0][9] = 2;
addressing_mode[0][10] = 1;
addressing_mode[0][11] = 0;
addressing_mode[0][12] = 0;
addressing_mode[0][13] = 3;
addressing_mode[0][14] = 3;

//row:1
addressing_mode[1][0] = 2;
addressing_mode[1][1] = 2;
addressing_mode[1][2] = 0;
addressing_mode[1][3] = 0;
addressing_mode[1][4] = 0;
addressing_mode[1][5] = 2;
addressing_mode[1][6] = 2;
addressing_mode[1][7] = 0;
addressing_mode[1][8] = 1;
addressing_mode[1][9] = 3;
addressing_mode[1][10] = 0;
addressing_mode[1][11] = 0;
addressing_mode[1][12] = 0;
addressing_mode[1][13] = 3;
addressing_mode[1][14] = 3;

//row:2
addressing_mode[2][0] = 3;
addressing_mode[2][1] = 2;
addressing_mode[2][2] = 0;
addressing_mode[2][3] = 0;
addressing_mode[2][4] = 2;
addressing_mode[2][5] = 2;
addressing_mode[2][6] = 2;
addressing_mode[2][7] = 0;
addressing_mode[2][8] = 1;
addressing_mode[2][9] = 2;
addressing_mode[2][10] = 1;
addressing_mode[2][11] = 0;
addressing_mode[2][12] = 3;
addressing_mode[2][13] = 3;
addressing_mode[2][14] = 3;

//row:3
addressing_mode[3][0] = 2;
addressing_mode[3][1] = 2;
addressing_mode[3][2] = 0;
addressing_mode[3][3] = 0;
addressing_mode[3][4] = 0;
addressing_mode[3][5] = 2;
addressing_mode[3][6] = 2;
addressing_mode[3][7] = 0;
addressing_mode[3][8] = 1;
addressing_mode[3][9] = 3;
addressing_mode[3][10] = 0;
addressing_mode[3][11] = 0;
addressing_mode[3][12] = 0;
addressing_mode[3][13] = 3;
addressing_mode[3][14] = 3;

//row:4
addressing_mode[4][0] = 1;
addressing_mode[4][1] = 2;
addressing_mode[4][2] = 0;
addressing_mode[4][3] = 0;
addressing_mode[4][4] = 0;
addressing_mode[4][5] = 2;
addressing_mode[4][6] = 2;
addressing_mode[4][7] = 0;
addressing_mode[4][8] = 1;
addressing_mode[4][9] = 2;
addressing_mode[4][10] = 1;
addressing_mode[4][11] = 0;
addressing_mode[4][12] = 3;
addressing_mode[4][13] = 3;
addressing_mode[4][14] = 3;

//row:5
addressing_mode[5][0] = 2;
addressing_mode[5][1] = 2;
addressing_mode[5][2] = 0;
addressing_mode[5][3] = 0;
addressing_mode[5][4] = 0;
addressing_mode[5][5] = 2;
addressing_mode[5][6] = 2;
addressing_mode[5][7] = 0;
addressing_mode[5][8] = 1;
addressing_mode[5][9] = 3;
addressing_mode[5][10] = 0;
addressing_mode[5][11] = 0;
addressing_mode[5][12] = 0;
addressing_mode[5][13] = 3;
addressing_mode[5][14] = 3;

//row:6
addressing_mode[6][0] = 1;
addressing_mode[6][1] = 2;
addressing_mode[6][2] = 0;
addressing_mode[6][3] = 0;
addressing_mode[6][4] = 0;
addressing_mode[6][5] = 2;
addressing_mode[6][6] = 2;
addressing_mode[6][7] = 0;
addressing_mode[6][8] = 1;
addressing_mode[6][9] = 2;
addressing_mode[6][10] = 1;
addressing_mode[6][11] = 0;
addressing_mode[6][12] = 3;
addressing_mode[6][13] = 3;
addressing_mode[6][14] = 3;

//row:7
addressing_mode[7][0] = 2;
addressing_mode[7][1] = 2;
addressing_mode[7][2] = 0;
addressing_mode[7][3] = 0;
addressing_mode[7][4] = 0;
addressing_mode[7][5] = 2;
addressing_mode[7][6] = 2;
addressing_mode[7][7] = 0;
addressing_mode[7][8] = 1;
addressing_mode[7][9] = 3;
addressing_mode[7][10] = 0;
addressing_mode[7][11] = 0;
addressing_mode[7][12] = 0;
addressing_mode[7][13] = 3;
addressing_mode[7][14] = 3;

//row:8
addressing_mode[8][0] = 0;
addressing_mode[8][1] = 2;
addressing_mode[8][2] = 0;
addressing_mode[8][3] = 0;
addressing_mode[8][4] = 2;
addressing_mode[8][5] = 2;
addressing_mode[8][6] = 2;
addressing_mode[8][7] = 0;
addressing_mode[8][8] = 1;
addressing_mode[8][9] = 0;
addressing_mode[8][10] = 1;
addressing_mode[8][11] = 0;
addressing_mode[8][12] = 3;
addressing_mode[8][13] = 3;
addressing_mode[8][14] = 3;

//row:9
addressing_mode[9][0] = 2;
addressing_mode[9][1] = 2;
addressing_mode[9][2] = 0;
addressing_mode[9][3] = 0;
addressing_mode[9][4] = 2;
addressing_mode[9][5] = 2;
addressing_mode[9][6] = 2;
addressing_mode[9][7] = 0;
addressing_mode[9][8] = 1;
addressing_mode[9][9] = 3;
addressing_mode[9][10] = 1;
addressing_mode[9][11] = 0;
addressing_mode[9][12] = 0;
addressing_mode[9][13] = 3;
addressing_mode[9][14] = 0;

//row:10
addressing_mode[10][0] = 2;
addressing_mode[10][1] = 2;
addressing_mode[10][2] = 2;
addressing_mode[10][3] = 0;
addressing_mode[10][4] = 2;
addressing_mode[10][5] = 2;
addressing_mode[10][6] = 2;
addressing_mode[10][7] = 0;
addressing_mode[10][8] = 1;
addressing_mode[10][9] = 2;
addressing_mode[10][10] = 1;
addressing_mode[10][11] = 0;
addressing_mode[10][12] = 3;
addressing_mode[10][13] = 3;
addressing_mode[10][14] = 3;

//row:11
addressing_mode[11][0] = 2;
addressing_mode[11][1] = 2;
addressing_mode[11][2] = 0;
addressing_mode[11][3] = 0;
addressing_mode[11][4] = 2;
addressing_mode[11][5] = 2;
addressing_mode[11][6] = 2;
addressing_mode[11][7] = 0;
addressing_mode[11][8] = 1;
addressing_mode[11][9] = 3;
addressing_mode[11][10] = 1;
addressing_mode[11][11] = 0;
addressing_mode[11][12] = 3;
addressing_mode[11][13] = 3;
addressing_mode[11][14] = 3;

//row:12
addressing_mode[12][0] = 2;
addressing_mode[12][1] = 2;
addressing_mode[12][2] = 0;
addressing_mode[12][3] = 0;
addressing_mode[12][4] = 2;
addressing_mode[12][5] = 2;
addressing_mode[12][6] = 2;
addressing_mode[12][7] = 0;
addressing_mode[12][8] = 1;
addressing_mode[12][9] = 2;
addressing_mode[12][10] = 1;
addressing_mode[12][11] = 0;
addressing_mode[12][12] = 3;
addressing_mode[12][13] = 3;
addressing_mode[12][14] = 3;

//row:13
addressing_mode[13][0] = 2;
addressing_mode[13][1] = 2;
addressing_mode[13][2] = 0;
addressing_mode[13][3] = 0;
addressing_mode[13][4] = 0;
addressing_mode[13][5] = 2;
addressing_mode[13][6] = 2;
addressing_mode[13][7] = 0;
addressing_mode[13][8] = 1;
addressing_mode[13][9] = 3;
addressing_mode[13][10] = 0;
addressing_mode[13][11] = 0;
addressing_mode[13][12] = 0;
addressing_mode[13][13] = 3;
addressing_mode[13][14] = 3;

//row:14
addressing_mode[14][0] = 2;
addressing_mode[14][1] = 2;
addressing_mode[14][2] = 0;
addressing_mode[14][3] = 0;
addressing_mode[14][4] = 2;
addressing_mode[14][5] = 2;
addressing_mode[14][6] = 2;
addressing_mode[14][7] = 0;
addressing_mode[14][8] = 1;
addressing_mode[14][9] = 2;
addressing_mode[14][10] = 1;
addressing_mode[14][11] = 0;
addressing_mode[14][12] = 3;
addressing_mode[14][13] = 3;
addressing_mode[14][14] = 3;

//row:15
addressing_mode[15][0] = 2;
addressing_mode[15][1] = 2;
addressing_mode[15][2] = 0;
addressing_mode[15][3] = 0;
addressing_mode[15][4] = 0;
addressing_mode[15][5] = 2;
addressing_mode[15][6] = 2;
addressing_mode[15][7] = 0;
addressing_mode[15][8] = 1;
addressing_mode[15][9] = 3;
addressing_mode[15][10] = 0;
addressing_mode[15][11] = 0;
addressing_mode[15][12] = 0;
addressing_mode[15][13] = 3;
addressing_mode[15][14] = 3;
end


endmodule
