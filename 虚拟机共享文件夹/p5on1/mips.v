`timescale 1ns / 1ps

module mips(
		input clk,
		input reset
    );
	reg[31:0] im[0:4095];
	reg[31:0] data[0:3071];
	integer pc,prepc;
	reg[31:0] rg[0:31];
	wire[31:0] code=im[(pc-'h3000)/4];
	wire[5:0] op=code[31:26],func=code[5:0];
	wire[4:0] rs=code[25:21],rt=code[20:16],rd=code[15:11];
	wire[15:0] imm=code[15:0];
	wire[31:0] zeroimm={{16{1'b0}},imm},signimm={{16{imm[15]}},imm};
	wire[31:0] rsdata=rg[rs],rtdata=rg[rt];
	reg rgwrien,datawrien;
	reg[5:0] rgwriaddr;
	reg[31:0] datawriaddr;
	reg[31:0] wri,tem;
	reg pcadd;
	integer rsint,rtint;
	
	integer tme,T,bg; //时间，周期，开始了几个周期
	
	//reg[31:0] string;
	
	reg zuse;  //是否阻塞
	reg yanchicao,ifjump;  //是否要执行延迟槽,是否发生跳转
	integer ypc,npc;   //延迟槽的pc,正常执行的pc
	reg [31:0] tc[0:31];
	
	reg [31:0] rand;
	
	reg[31:0] vaddr,paddr,bit_,memhalf,memword;
	integer count;
	//reg clk=0;
	//reg reset=0;
	
	integer i;
	//always #1 clk=~clk;
	initial 
	begin
		$readmemh("code.txt",im);
	//	$write("begin\n");
		pc='h3000;
		for(i=0;i<=31;i=i+1) rg[i]=0;
		for(i=0;i<=3071;i=i+1) data[i]=0;
		for(i=0;i<=31;i=i+1) tc[i]=0;
		
		yanchicao=0;
		bg=0;
	end
	always @(posedge clk) //if(pc<'h4020)
	begin
		//$display("pc=%d",(pc-'h3000)/4);
		if(reset==1)
		begin
			pc='h3000;
			for(i=0;i<=31;i=i+1) rg[i]=0;
			for(i=0;i<=3071;i=i+1) data[i]=0;
			for(i=0;i<=31;i=i+1) tc[i]=0;
			
			yanchicao=0;
			bg=0;
		end
		else
		begin
			bg=bg+1;
			for(i=1;i<=31;i=i+1)
			begin
				if(tc[i]!=0) tc[i]=tc[i]-1;
			end
			tc[0]=0;
			
			zuse=0;
			if(bg>=4)
			begin
				if(op==0&&func=='b100000)  //add
				begin
					if(tc[rs]>1) zuse=1;
					if(tc[rt]>1) zuse=1;
				end
				else if(op==0&&func=='b100010) //sub
				begin
					if(tc[rs]>1) zuse=1;
					if(tc[rt]>1) zuse=1;					
				end
				else if(op=='b001101) //ori
				begin
					if(tc[rs]>1) zuse=1;
				end	
				else if(op=='b001111) //lui
				begin
				
				end	
				else if(op=='b100011) //lw
				begin
					if(tc[rs]>1) zuse=1;
				end
				else if(op=='b101011) //sw
				begin
					if(tc[rs]>2) zuse=1;
				end
				else if(op=='b000100) //beq
				begin
					if(tc[rs]>0) zuse=1;
					if(tc[rt]>0) zuse=1;
				end
				else if(op=='b000011) //jal
				begin

				end
				else if(op==0&&func=='b001000) //jr
				begin
					if(tc[rs]>0) zuse=1;
				end
				else if(op=='b110011) //new
				begin
					if(tc[rs]>1) zuse=1;
				end
			end
			
		
			if(bg>=4&&zuse==0)
			begin
				T=$time-tme;
				rgwrien=0;
				datawrien=0;
				pcadd=0;	
				prepc=pc;
				ifjump=0;
				if(op==0&&func=='b100000)  //add
				begin
					//$display("%d %d %d %d %d",rs,rsdata,rt,rtdata,wri);
					tc[rd]=2;
					wri=rsdata+rtdata;
					rgwrien=1;
					rgwriaddr=rd;
				end
				else if(op==0&&func=='b100010) //sub
				begin
					tc[rd]=2;
					wri=rsdata-rtdata;
					rgwrien=1;
					rgwriaddr=rd;
				end
				else if(op=='b001101) //ori
				begin
					tc[rt]=2;
					wri=rsdata|zeroimm;
					rgwrien=1;
					rgwriaddr=rt;
				end	
				else if(op=='b001111) //lui
				begin
					tc[rt]=1;
					wri={imm,{16{1'b0}}};
					rgwrien=1;
					rgwriaddr=rt;
				end	
				else if(op=='b100011) //lw
				begin
					tc[rt]=3;
					tem=rsdata+signimm;
					wri=data[tem/4];
					rgwrien=1;
					rgwriaddr=rt;
				end
				else if(op=='b101011) //sw
				begin
					wri=rtdata;
					datawrien=1;
					datawriaddr=rsdata+signimm;
				end
				else if(op=='b000100) //beq
				begin
					//$display("ben %d %d  %d %d",rsdata,rtdata,signimm,pc);	
					if(rsdata==rtdata)
					begin
						pc=pc+signimm*4;
						ifjump=1;
					end
					//$display("beq %d %d  %d %d",rsdata,rtdata,signimm,pc);
				end
				else if(op=='b000011) //jal
				begin
					tc[31]=1;
					wri=pc+8;
					pc={pc[31:28],code[25:0],2'b00};
					rgwrien=1;
					rgwriaddr=31;
					pcadd=1;
					ifjump=1;
				end
				else if(op==0&&func=='b001000) //jr
				begin
					pc=rsdata;
					pcadd=1;
					ifjump=1;
				end
				else if(op=='b110011) //new
				begin
					tc[rt]=3;
					tc[31]=3;
					vaddr=signimm+rsdata;
					paddr=vaddr>>2;
					memword=data[paddr];
					bit_=vaddr[1];
					if(bit_==1) memhalf=memword>>16;
					else memhalf=memword<<16>>16;
					count=0;  //integer
					for(i=0;i<=15;i=i+1)
						if(memhalf[i]==1) count=count+1;
						else count=count-1;
					if(count>=0)
					begin
						if(memhalf[15]==0) wri=memhalf;
						else wri=((-1)>>16<<16)+memhalf;
						rgwrien=1;
						rgwriaddr=rt;
					end
					else
					begin
						wri=pc+4;
						rgwrien=1;
						rgwriaddr=31;
					end
					
				end
				
				if(rgwrien==1)
				begin
					$display("%d@%h: $%d <= %h",$time + T, prepc, rgwriaddr, wri);
					if(rgwriaddr!=0) rg[rgwriaddr]=wri;
				end
				if(datawrien==1)
				begin
					$display("%d@%h: *%h <= %h", $time, prepc, datawriaddr, wri);
					data[datawriaddr/4]=wri;
				end
				if(pcadd==0) pc=pc+4;
				
				if(yanchicao==1)
				begin
					pc=npc;
					yanchicao=0;
				end
				
				if(ifjump) //发生了跳转，则先执行延迟槽
				begin
					yanchicao=1;
					npc=pc;
					pc=prepc+4;
				end
			end
			tme=$time;
		end
	end
endmodule


