`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:53 10/02/2022 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
		input [7:0] char,
		input clk,
		output out
    );
		reg [2:0] S = 0;
		assign out = S==2;
		always @(posedge clk)
			if(char>=97&&char<=122||char>=65&&char<=90)
				case(S)
					0:S<=1;
					1:S<=1;
					2:S<=1;
				endcase
			else if(char>=48&&char<=57)
				case(S)
					0:S<=0;
					1:S<=2;
					2:S<=2;
				endcase
endmodule
