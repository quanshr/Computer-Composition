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
	
	//reg clk=0;
	//reg reset=0;
	integer i;
	//always #1 clk=~clk;
	initial 
	begin
		$readmemh("code.txt",im);
		pc='h3000;
		for(i=0;i<=31;i=i+1) rg[i]=0;
		for(i=0;i<=3071;i=i+1) data[i]=0;
	end
	always @(posedge clk) //if(pc<'h4020)
	begin
		//$display("pc=%d",(pc-'h3000)/4);
		if(reset==1)
		begin
			pc='h3000;
			for(i=0;i<=31;i=i+1) rg[i]=0;
			for(i=0;i<=3071;i=i+1) data[i]=0;
		end
		else
		begin
			rgwrien=0;
			datawrien=0;
			pcadd=0;
			prepc=pc;
			if(op==0&&func=='b100000)  //add
			begin
				//$display("%d %d %d %d %d",rs,rsdata,rt,rtdata,wri);
				wri=rsdata+rtdata;
				rgwrien=1;
				rgwriaddr=rd;
			end
			else if(op==0&&func=='b100010) //sub
			begin
				wri=rsdata-rtdata;
				rgwrien=1;
				rgwriaddr=rd;
			end
			else if(op=='b001101) //ori
			begin
				wri=rsdata|zeroimm;
				rgwrien=1;
				rgwriaddr=rt;
			end	
			else if(op=='b001111) //lui
			begin
				wri={imm,{16{1'b0}}};
				rgwrien=1;
				rgwriaddr=rt;
			end	
			else if(op=='b100011) //lw
			begin
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
				if(rsdata==rtdata) pc=pc+signimm*4;
				//$display("beq %d %d  %d %d",rsdata,rtdata,signimm,pc);
			end			
			else if(op=='b000011) //jal
			begin
				wri=pc+4;
				pc={pc[31:28],code[25:0],2'b00};
				rgwrien=1;
				rgwriaddr=31;
				pcadd=1;
			end
			else if(op==0&&func=='b001000) //jr
			begin
				pc=rsdata;
				pcadd=1;
			end
			
			if(rgwrien==1)
			begin
				$display("@%h: $%d <= %h", prepc, rgwriaddr, wri);
				if(rgwriaddr!=0) rg[rgwriaddr]=wri;
			end
			if(datawrien==1)
			begin
				$display("@%h: *%h <= %h", prepc, datawriaddr, wri);
				data[datawriaddr/4]=wri;
			end
			if(pcadd==0) pc=pc+4;
		end
	end
endmodule

