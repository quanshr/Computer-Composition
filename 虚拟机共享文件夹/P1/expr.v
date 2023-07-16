`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:25 10/05/2022 
// Design Name: 
// Module Name:    expr 
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
module expr(
		input clk,clr,
		input [7:0] in,
		output out
    );
		assign out = state==1?1:0;
		integer state;
		always @(posedge clr or posedge clk)
			if(clr==1)
				state = 0;
			else
				case(in)
					"0","1","2","3","4","5","6","7","8","9":
						if(state==0||state==2) state=1;
						else state=4;
					"+","*":
						if(state==1) state=2;
						else state=4;
					default:
						state=4;
				endcase
					
endmodule
