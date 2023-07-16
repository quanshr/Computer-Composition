`timescale 1ns / 1ps

module liushuiD(
		input clk,reset,
		
		input [31:0] pc,code,wpc,
		output reg[31:0] npc,ncode,out1,out2,
		
		// 本级in1代表  rs ,in2代表   rt
		//     ou1代表  rsdata ，out2代表  rtdata （经内部转发）
		
		output reg[4:0] nrgwriaddr,
		output reg[31:0] nrgwritime,
		
		input [4:0] M_rgwriaddr,W_rgwriaddr,		  //用于转发和写入
		input [31:0] M_rgwridata,W_rgwridata,
		input [31:0] M_rgwritime,W_rgwritime,
		
		input[4:0] E_rgwriaddr,
		input [31:0] E_rgwritime,
		
		output reg ifjump,
		output reg[31:0] jumppc

		//本级还需要加入—— grf与跳转的判定   阻塞
		
		
	);
	wire[5:0] op=code[31:26],func=code[5:0];
	wire[4:0] rs=code[25:21],rt=code[20:16],rd=code[15:11];
	wire[15:0] imm=code[15:0];
	wire[31:0] zeroimm={{16{1'b0}},imm},signimm={{16{imm[15]}},imm};
	
	//本级还需要加入____grf与跳转的判定
	
	reg[31:0] rg[0:31];	
	
	wire[31:0] in1new=M_rgwritime==0&&M_rgwriaddr==rs?M_rgwridata:   //转发，只有当前立即使用才转发
						   W_rgwritime==0&&W_rgwriaddr==rs?W_rgwridata:
						   rg[rs];
	wire[31:0] in2new=M_rgwritime==0&&M_rgwriaddr==rt?M_rgwridata:   
						   W_rgwritime==0&&W_rgwriaddr==rt?W_rgwridata:
						   rg[rt];
	
	
	integer i;
	reg zuse;
	reg[31:0] rgt[0:31];
	
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
			for(i=0;i<=31;i=i+1) rg[i]<=0;
		end
		else
		begin
			zuse=0;
			
			for(i=0;i<=31;i=i+1) rgt[i]=0;
			rgt[M_rgwriaddr]=M_rgwritime;
			rgt[E_rgwriaddr]=E_rgwritime;
			rgt[0]=0;
			
			if(op==0&&func=='b100000)  //add
			begin
//				wri=rsdata+rtdata;
//				rgwrien=1;
//				rgwriaddr=rd;				
				ifjump<=0;
				if(rgt[rs]>1) zuse=1;
				if(rgt[rt]>1) zuse=1;
				nrgwriaddr<=rd;
				nrgwritime<=2;
				
			end
			else if(op==0&&func=='b100010) //sub
			begin
//				wri=rsdata-rtdata;
//				rgwrien=1;
//				rgwriaddr=rd;
				ifjump<=0;
				if(rgt[rs]>1) zuse=1;
				if(rgt[rt]>1) zuse=1;
				nrgwriaddr<=rd;
				nrgwritime<=2;				
				
			end
			else if(op=='b001101) //ori
			begin
//				wri=rsdata|zeroimm;
//				rgwrien=1;
//				rgwriaddr=rt;
				ifjump<=0;
				if(rgt[rs]>1) zuse=1;
				nrgwriaddr<=rt;
				nrgwritime<=2;			
				
			end	
			else if(op=='b001111) //lui
			begin
//				wri={imm,{16{1'b0}}};
//				rgwrien=1;
//				rgwriaddr=rt;
				ifjump<=0;
				nrgwriaddr<=rt;
				nrgwritime<=2;

			end	
			else if(op=='b100011) //lw
			begin
//				tem=rsdata+signimm;
//				wri=data[tem/4];
//				rgwrien=1;
//				rgwriaddr=rt;
				ifjump<=0;
				if(rgt[rs]>1) zuse=1;
				nrgwriaddr<=rd;
				nrgwritime<=3;

			end
			else if(op=='b101011) //sw
			begin
//				wri=rtdata;
//				datawrien=1;
//				datawriaddr=rsdata+signimm;
				ifjump<=0;
				if(rgt[rs]>1) zuse=1;
				nrgwriaddr<=0;
				nrgwritime<=0;

			end
			else if(op=='b000100) //beq
			begin
//				if(rsdata==rtdata) pc=pc+signimm*4;
				if(in1new==in2new)
				begin
					ifjump<=1;
					jumppc<=pc+signimm*4;
				end
				if(rgt[rs]>0) zuse=1;
				if(rgt[rt]>0) zuse=1;
				nrgwriaddr<=0;
				nrgwritime<=0;
				
				
			end			
			else if(op=='b000011) //jal
			begin
//				wri=pc+4;
//				pc={pc[31:28],code[25:0],2'b00};
//				rgwrien=1;
//				rgwriaddr=31;
//				pcadd=1;
				ifjump<=1;
				jumppc<={3'b000,code[25:0],2'b00};
				out1<=pc+8;      //对于写入数据确定的，out1为写入结果，rgwriaddr,
				nrgwriaddr<=31;
				nrgwritime<=1;

			end
			else if(op==0&&func=='b001000) //jr
			begin
//				pc=rsdata;
//				pcadd=1;
				ifjump<=1;
				jumppc<=in1new;
				if(rgt[rs]>0) zuse=1;
				nrgwriaddr<=0;
				nrgwritime<=0;

			end
			else
			begin
				//置零
				ifjump<=0;				
				nrgwriaddr<=0;
				nrgwritime<=0;
				
			end
		
			if(zuse)
			begin
				npc='h3000;
				ncode=0;
				nrgwriaddr=0;
				
			end
			
			if(W_rgwriaddr!=0)
			begin
				rg[W_rgwriaddr]=W_rgwridata;
				$display("%d@%h: $%d <= %h", $time, wpc, W_rgwriaddr, W_rgwridata);
			end
		end
	end
	
	
endmodule
