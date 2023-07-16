`timescale 1ns / 1ps

module liushuiE(
		input clk,reset,
		
		input [31:0] pc,code,in1,in2,
		output reg[31:0] npc,ncode,out1,out2,
		
		// 本级in1代表  rsdata ,in2代表   rtdata
		//     ou1代表  memaddr ，out2代表 memwridata
		
		input [4:0] rgwriaddr,		
		input [31:0] rgwritime,
		output reg[4:0] nrgwriaddr,
		output reg[31:0] nrgwritime,
		
		input [4:0] M_rgwriaddr,W_rgwriaddr,		  //用于转发
		input [31:0] M_rgwridata,W_rgwridata,
		input [31:0] M_rgwritime,W_rgwritime 

		//本级还需要加入—— 
		
		
	);
	wire[5:0] op=code[31:26],func=code[5:0];
	wire[4:0] rs=code[25:21],rt=code[20:16],rd=code[15:11];
	wire[15:0] imm=code[15:0];
	wire[31:0] zeroimm={{16{1'b0}},imm},signimm={{16{imm[15]}},imm};
	
	//本级还需要加入____
	

	wire[31:0] in1new=M_rgwritime==0&&M_rgwriaddr==rs?M_rgwridata:   //转发，只有当前立即使用才转发
						   W_rgwritime==0&&W_rgwriaddr==rs?W_rgwridata:
						   in1;
	wire[31:0] in2new=M_rgwritime==0&&M_rgwriaddr==rt?M_rgwridata:   
						   W_rgwritime==0&&W_rgwriaddr==rt?W_rgwridata:
						   in2;
	
	
	integer i;
	
	always@(posedge clk)
	begin
		if(reset==1)
		begin
			npc<='h3000;
			ncode<=0;
			out1<=0;
			out2<=0;
			nrgwriaddr<=0;
			nrgwritime<=0;
		end
		else
		begin
			npc<=pc;
			ncode<=code;
			nrgwriaddr<=rgwriaddr;
			nrgwritime<=rgwritime==0?0:rgwritime-1;
			//out1<=
			//out2<=
			
			//各指令在本级需要完成的行为是——ALU
			
			if(op==0&&func=='b100000)  //add
			begin
//				wri=rsdata+rtdata;
//				rgwrien=1;
//				rgwriaddr=rd;
				out1<=in1new+in2new;				
				
			end
			else if(op==0&&func=='b100010) //sub
			begin
//				wri=rsdata-rtdata;
//				rgwrien=1;
//				rgwriaddr=rd;
				out1<=in1new-in2new;

			end
			else if(op=='b001101) //ori
			begin
//				wri=rsdata|zeroimm;
//				rgwrien=1;
//				rgwriaddr=rt;
				out1<=in1new|zeroimm;

			end	
			else if(op=='b001111) //lui
			begin
//				wri={imm,{16{1'b0}}};
//				rgwrien=1;
//				rgwriaddr=rt;
				out1<={imm,{16{1'b0}}};

			end	
			else if(op=='b100011) //lw
			begin
//				tem=rsdata+signimm;
//				wri=data[tem/4];
//				rgwrien=1;
//				rgwriaddr=rt;
				out1<=in1new+signimm;

			end
			else if(op=='b101011) //sw
			begin
//				wri=rtdata;
//				datawrien=1;
//				datawriaddr=rsdata+signimm;
				out1<=in1new+signimm;
				out2<=in2new;

			end
			else if(op=='b000100) //beq
			begin
//				if(rsdata==rtdata) pc=pc+signimm*4;

			end			
			else if(op=='b000011) //jal
			begin
//				wri=pc+4;
//				pc={pc[31:28],code[25:0],2'b00};
//				rgwrien=1;
//				rgwriaddr=31;
//				pcadd=1;

			end
			else if(op==0&&func=='b001000) //jr
			begin
//				pc=rsdata;
//				pcadd=1;

			end
			else
			begin
				//置零		
				
			end
		end
	end
	
	
endmodule
