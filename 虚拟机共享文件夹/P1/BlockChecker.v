`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:59 10/05/2022 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
		input clk,reset,
		input [7:0] in,
		output reg result
    );
		integer flag,be,en,sum,k,t;
		always @(posedge reset or posedge clk)
			if(reset==1)
			begin
				be <= 0;
				flag <= 0;
				en <= 0;
				sum <= 0;
				result <= 1;
			end
			else
			begin
				if(in == " ")
				begin
					if(be==5) sum=sum+1;
					if(en==3) sum=sum-1;
					if(sum<0) flag=1;
					be=0;
					en=0;
				end
				else
				begin
					if(in>="A"&&in<="Z") t=in-"A"+"a";
					else t=in;
					if(be==0&&t=="b"||
						be==1&&t=="e"||
						be==2&&t=="g"||
						be==3&&t=="i"||
						be==4&&t=="n") be=be+1;
					else be=7;
					if(en==0&&t=="e"||
						en==1&&t=="n"||
						en==2&&t=="d") en=en+1;
					else en=7;
				end
				k=sum;
				if(be==5) k=k+1;
				if(en==3) k=k-1;
				result=k==0&&flag==0?1:0;
			end
endmodule