`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:00 10/02/2022 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
		input clk,
		input reset,
		input [7:0] char,
		output [1:0] format_type,
		output reg [7:0] S1,
		output reg [7:0] S2
    );
		reg [7:0] t;
		wire [7:0] c;
		assign c = char;
		assign format_type = S1==31 ? 1 :
									S2==35 ? 2 : 0;
		always @(posedge clk)
			if(reset==1) begin
				S1<=0;
				S2<=0;
			end
			else begin
				t=0;
				case(S1)
					0: if(c=="^") t=S1+1;
					1,2,3,4,5: if(c>="0"&&c<="9"&&S1!=5) t=S1+1;
								else if(c=="@"&&S1!=1) t=6;
					6,7,8,9,10,11,12,13: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S1+1;
					14: if(c==":") t=S1+1;
					15: if(c==" ") t=S1;
							else if(c=="$") t=S1+1;
					16,17,18,19,20: if(c>="0"&&c<="9"&&S1!=20) t=S1+1;
								else if(c==" ") t=20;
								else if(c=="<"&&S1!=16) t=21;
					21: if(c=="=") t=22;
					22: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S1+1;
							else if(c==" ") t=S1;
					23,24,25,26,27,28,29: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S1+1;
					30: if(c=="#") t=S1+1;
					
 				endcase
				S1=t;
				if(c=="^") S1=1;
				
				t=0;
				case(S2)
					0: if(c=="^") t=S2+1;
					1,2,3,4,5: if(c>="0"&&c<="9"&&S2!=5) t=S2+1;
								else if(c=="@"&&S1!=1) t=6;
					6,7,8,9,10,11,12,13: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S2+1;
					14: if(c==":") t=S2+1;
					15: if(c==" ") t=S2;
							else if(c=="*") t=S2+1;
					16,17,18,19,20,21,22,23: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S2+1;
					24: if(c==" ") t=S2;
							else if(c=="<") t=S2+1;
					25: if(c=="=") t=S2+1;
					26: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S2+1;
							else if(c==" ") t=S2;
					27,28,29,30,31,32,33: if(c>="0"&&c<="9"||c>="a"&&c<="f") t=S2+1;
					34: if(c=="#") t=S2+1;
					
 				endcase
				S2=t;
				if(c=="^") S2=1;
				
			end

endmodule
