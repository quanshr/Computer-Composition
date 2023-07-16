`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:29 09/26/2022 
// Design Name: 
// Module Name:    code 
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
module code(
	input Clk,
	input Reset,
	input Slt,
	input En,
	output reg [63:0] Output0,
	output reg [63:0] Output1
    );
	 
	 reg [63:0] out1;

	always @(posedge Clk) begin
		if(Reset == 1) begin
			Output0 <= 0;
			Output1 <= 0;
			out1 <= 0;
		end
		else if(En == 1) begin
			if(Slt == 0) Output0 <= Output0 + 1;
			else begin
				out1 = out1 + 1;
				Output1 = out1 / 4;
			end
		end
	end

endmodule
