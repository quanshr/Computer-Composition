`timescale 1ns / 1ps

module mips(
		input clk,
		input reset
    );
	reg[31:0] im[0:4095];
	reg[31:0] rg[0:31];
	reg[31:0] mem[0:3071];
	integer pc,dpc,epc,mpc,wpc;
	wire[31:0] code=im[(pc-'h3000)>>2];
	reg[31:0] dcode,ecode,mcode,wcode;
	
	wire [31:0] rs=code[25:21],rt=code[20:16],rd=code[15:11];
	wire [31:0] drs=dcode[25:21],drt=dcode[20:16],drd=dcode[15:11];
	wire [31:0] ers=ecode[25:21],ert=ecode[20:16],erd=ecode[15:11];
	wire [31:0] mrs=mcode[25:21],mrt=mcode[20:16],mrd=mcode[15:11];
	wire [31:0] wrs=wcode[25:21],wrt=wcode[20:16],wrd=wcode[15:11];
	
	wire[5:0] op=code[31:26],func=code[5:0];
	
	wire [31:0] nop=0,add=1,sub=2,ori=3,lui=4,lw=5,sw=6,beq=7,jal=8,jr=9;
	wire [31:0] type=(op==0&&func=='b100000)?add:
						  (op==0&&func=='b100010)?sub: 
						  (op=='b001101)         ?ori:
						  (op=='b001111)         ?lui:
						  (op=='b100011)         ?lw:
						  (op=='b101011)         ?sw:
						  (op=='b000100)         ?beq:
						  (op=='b000011)         ?jal:
						  (op==0&&func=='b001000)?jr:
							nop;

	reg[31:0] dtype,etype,mtype,wtype;
	
	wire[15:0] dimm=dcode[15:0];
	wire[31:0] dzeroimm={{16{1'b0}},dimm},dsignimm={{16{dimm[15]}},dimm};
	
	wire [31:0] wriaddr=type===add?rd:
					type===sub?rd:
					type===ori?rt:
					type===lui?rt:
					type===lw?rt:
					type===jal?31:
					0;
	
	wire [31:0] writime=type===add?2:
				type===sub?2:
				type===ori?2:
				type===lui?1:
				type===lw?3:
				type===jal?1:
				0;
				
	reg [31:0] dwriaddr,dwritime;
	reg [31:0] ewridata,ewriaddr,ewritime,in1,in2,ememswdata;
	reg [31:0] mwridata,mwriaddr,mwritime,memaddr,mmemswdata;
	reg [31:0] wwridata,wwriaddr,wwritime;
	
	wire [31:0] rstime=drs===0?0:
						ewriaddr===drs?ewritime:
						mwriaddr===drs?mwritime:
						wwriaddr===drs?wwritime:0,
					rttime=drt===0?0:
						ewriaddr===drt?ewritime:
						mwriaddr===drt?mwritime:
						wwriaddr===drt?wwritime:0;
	
	wire zuse=(dtype===add&&(rstime>1||rttime>1))
				||(dtype===sub&&(rstime>1||rttime>1))
				||(dtype===ori&&rstime>1)
				||(dtype===lw&&rstime>1)
				||(dtype===sw&&(rstime>1||rttime>2))
				||(dtype===beq&&(rstime>0||rttime>0))
				||(dtype===jr&&rstime>0);
	
	wire [31:0] drsdata=drs===0?0:
						ewriaddr===drs?ewridata:
						mwriaddr===drs?mwridata:
						wwriaddr===drs?wwridata:rg[drs],
					drtdata=drt===0?0:
						ewriaddr===drt?ewridata:
						mwriaddr===drt?mwridata:
						wwriaddr===drt?wwridata:rg[drt];
						
	wire [31:0] drgrs=drs===0?0:
						wwriaddr===drs?wwridata:
						rg[drs],
					drgrt=drt===0?0:
						wwriaddr===drt?wwridata:
						rg[drt];
						
	wire [31:0] npc=(dtype===beq&&drsdata===drtdata)?dpc+4+(dsignimm<<2):
						(dtype===jal)?dcode[25:0]<<2:
						(dtype===jr)?drsdata:
						pc+4;
	
	wire [31:0] ersdata=ers===0?0:
						mwriaddr===ers?mwridata:
						wwriaddr===ers?wwridata:in1,
					ertdata=ert===0?0:
						mwriaddr===ert?mwridata:
						wwriaddr===ert?wwridata:in2;
		
	
	integer i;
	
	initial 
	begin
		for(i=0;i<=4095;i=i+1) im[i]=0;
		pc='h3000;	
		$readmemh("code.txt",im);
		for(i=0;i<=31;i=i+1) rg[i]<=0;
		for(i=0;i<=3071;i=i+1) mem[i]<=0;
			
	end
	always @(posedge clk) //if(pc<'h4020)
	begin
		//$display("pc=%d",(pc-'h3000)/4);
		if(reset==1)
		begin
			pc<='h3000;
			for(i=0;i<=31;i=i+1) rg[i]<=0;
			for(i=0;i<=3071;i=i+1) mem[i]<=0;
			
		end
		else
		begin
	
			pc<=zuse===1?pc:npc;
			dpc<=zuse===1?dpc:pc;
			epc<=dpc;
			mpc<=epc;
			wpc<=mpc;
			
			dcode<=zuse===1?dcode:code;
			ecode<=zuse===1?0:dcode;
			mcode<=ecode;
			wcode<=mcode;
			
			dtype<=zuse===1?dtype:type;
			etype<=zuse===1?nop:dtype;
			mtype<=etype;
			wtype<=mtype;
			
			dwritime<=zuse===1?dwritime:writime;
			ewritime<=zuse===1?0:dwritime===0?0:dwritime-1;
			mwritime<=ewritime===0?0:ewritime-1;			
			wwritime<=mwritime===0?0:mwritime-1;

			dwriaddr<=zuse===1?dwriaddr:wriaddr;
			ewriaddr<=zuse===1?0:dwriaddr;
			mwriaddr<=ewriaddr;
			wwriaddr<=mwriaddr;
			
			in1<=dtype===add?drgrs:
				dtype===sub?drgrs:
				dtype===ori?drgrs:
				dtype===lw?drgrs:
				dtype===sw?drgrs:
				0;
			
			in2<=dtype===add?drgrt:
				dtype===sub?drgrt:
				dtype===ori?dzeroimm:
				dtype===lw?dsignimm:
				dtype===sw?dsignimm:
				0;
			
			ewridata<=dtype===lui?dimm<<16:
					dtype===jal?dpc+8:
					0;
			
			mwridata<=etype===add?ersdata+ertdata:
					etype===sub?ersdata-ertdata:
					etype===ori?ersdata|in2:
					ewridata;
				
			wwridata<=mtype===lw?mem[memaddr>>2]:mwridata;
			
			if(wwriaddr!=0)
			begin
				$display("%d@%h: $%d <= %h",$time,wpc,wwriaddr,wwridata);
				rg[wwriaddr]<=wwridata;
			end
			
			ememswdata<=drt===0?0:
							wwriaddr===drt?wwridata:
							rg[drt];
			mmemswdata<=ert===0?0:
							wwriaddr===ert?wwridata:
							ememswdata;
			memaddr<=ersdata+in2;
			
			if(mtype===sw)
			begin
				$display("%d@%h: *%h <= %h",$time,mpc,memaddr,mrt!==0&&wwriaddr===mrt?wwridata:mmemswdata);
				mem[memaddr>>2]<=mrt!==0&&wwriaddr===mrt?wwridata:mmemswdata;
			end
			
		end
	end
endmodule


