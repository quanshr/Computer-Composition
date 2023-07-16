`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:55 10/02/2022 
// Design Name: 
// Module Name:    counting 
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
module counting(
		input [1:0] num,
		input clk,
		output ans
    );
		parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
		reg [1:0] S;
		assign ans = S == S3;
		initial begin
			S <= S0;
		end
		always @(posedge clk)
			case(S)
				S0:
					case(num)
						1:S<=S1;
						2:S<=S0;
						3:S<=S0;
					endcase
				S1:
					case(num)
						1:S<=S1;
						2:S<=S2;
						3:S<=S0;
					endcase
				S2:
					case(num)
						1:S<=S1;
						2:S<=S2;
						3:S<=S3;
					endcase
				S3:
					case(num)
						1:S<=S1;
						2:S<=S0;
						3:S<=S3;
					endcase
			endcase

endmodule
