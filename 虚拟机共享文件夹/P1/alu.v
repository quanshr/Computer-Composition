`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:26 10/05/2022 
// Design Name: 
// Module Name:    alu 
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
module alu(
		input [31:0] A,B,
		input [2:0] ALUOp,
		output [31:0] C
    );
		wire [2:0] t=ALUOp+1;
		//assign t=ALUOp+1;
		wire [31:0] shift = $signed(A)>>>B;
		assign C=t==1?A+B:
					t==2?A-B:
					t==3?A&B:
					t==4?A|B:
					t==5?A>>B:shift;

endmodule
