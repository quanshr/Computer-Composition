`timescale 1ns / 1ps

module liushuiF(
		input clk,reset,
		
		input ifjump,
		input [31:0] jumppc,
		output reg[31:0] npc,ncode,
		

		input zuse

		//本级还需要加入——取指
		
		
	);
	reg [31:0] pc;
	reg[31:0] im[0:4095];
	initial
	begin
		$readmemh("code.txt",im);
		pc='h3000;
	end
	
	always@(posedge clk)
	begin
		if(reset==1)
		begin
			pc<='h3000;
			npc<='h3000;
			ncode<=0;
		end
		else
		begin
			npc<=zuse==1?npc:pc;
			ncode<=im[pc];
			pc<=ifjump==1?jumppc:zuse==1?pc:pc+4;
		end
	end
	
	
endmodule
