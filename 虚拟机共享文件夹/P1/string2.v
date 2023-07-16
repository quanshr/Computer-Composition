`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:50 10/10/2022 
// Design Name: 
// Module Name:    string2 
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
module string2(
		input clk,clr,
		input [7:0] in,
		output out
    );
	integer s,t;
	initial
	begin
		s=0;
		t=0;
	end
	assign out=(s==1&&t==0);
	always@(posedge clk or posedge clr)
	begin
		if(clr==1)
		begin
			s=0;
			t=0;
		end
		else
		begin
			if(in=="(")
				case(s)
					0:
						if(t==0) t=1;
						else s=10;
					1:
						s=10;
				endcase
			else if(in==")")
				case(s)
					0:
						s=10;
					1:
						if(t==1) t=0;
						else s=10;
				endcase
			else if(in=="*"||in=="+")
			begin
				if(s==0) s=10;
				else if(s==1) s=0;
			end
			else if(in>="0"&&in<="9")
			begin
				if(s==0) s=1;
				else if(s==1) s=10;
			end
			else s=10;
		end
	end

endmodule
