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
    input rst_n,
    input rw_n,
    input cs_n
    );

always @(posedge clk) begin

end

endmodule
