`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:34 10/05/2022 
// Design Name: 
// Module Name:    gray 
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
module gray(
		input Clk,Reset,En,
		output [2:0] Output,
		output reg Overflow
    );
		reg [2:0] out;
		assign Output= out==0?3'b000:
							out==1?3'b001:
							out==2?3'b011:
							out==3?3'b010:
							out==4?3'b110:
							out==5?3'b111:
							out==6?3'b101:3'b100;
		always@(posedge Clk)
			if(Reset==1)
			begin 
				out<=0;
				Overflow<=0;
			end
			else if(En==1)
			begin
				if(out==7) Overflow=1;
				out=out+1;
			end
endmodule
