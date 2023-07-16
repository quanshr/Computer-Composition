`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:19 10/05/2022 
// Design Name: 
// Module Name:    ext 
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
module ext(
		input [15:0] imm,
		input [1:0] EOp,
		output [31:0] ext
    );
		wire [31:0] a0,a1,a2,a3;
		assign a0[15:0] = imm[15:0];
		assign a0[31:16] = {16{imm[15]}};
		assign a1[15:0] = imm[15:0];
		assign a1[31:16] = 0;
		assign a2[31:16] = imm[15:0];
		assign a2[15:0] = 0;
		assign a3 = a0 << 2;
		assign ext = EOp==0?a0:
						EOp==1?a1:
						EOp==2?a2:a3;
endmodule
