`timescale 1ns / 1ps

module mips(
		input clk,
		input reset,
		input [31:0] i_inst_rdata,
		output [31:0] i_inst_addr,
		input [31:0] m_data_rdata,
		output [31:0] m_data_addr,m_data_wdata,m_inst_addr,
		output [3:0] m_data_byteen,
		output w_grf_we,
		output [4:0] w_grf_addr,
		output [31:0] w_grf_wdata,w_inst_addr
    );
	reg[31:0] rg[0:31];
	integer pc,dpc,epc,mpc,wpc;
	assign i_inst_addr=pc;
	wire[31:0] code=i_inst_rdata==={32{1'bx}}?0:i_inst_rdata;
	reg[31:0] dcode,ecode,mcode,wcode;
	
	wire [31:0] rs=code[25:21],rt=code[20:16],rd=code[15:11];
	wire [31:0] drs=dcode[25:21],drt=dcode[20:16],drd=dcode[15:11];
	wire [31:0] ers=ecode[25:21],ert=ecode[20:16],erd=ecode[15:11];
	wire [31:0] mrs=mcode[25:21],mrt=mcode[20:16],mrd=mcode[15:11];
	wire [31:0] wrs=wcode[25:21],wrt=wcode[20:16],wrd=wcode[15:11];
	
	wire[5:0] op=code[31:26],func=code[5:0];
	
	parameter nop=0,add=1,sub=2,cand=3,cor=4,slt=5,sltu=6,lui=7,
				addi=8,andi=9,ori=10,
				lb=11,lh=12,lw=13,sb=14,sh=15,sw=16,
				mult=17,multu=18,div=19,divu=20,mfhi=21,mflo=22,mthi=23,mtlo=24,
				beq=25,bne=26,jal=27,jr=28,new=29;
				
	wire [31:0] type=(op===0&&func==='b100000)?add:
						  (op===0&&func==='b100010)?sub:
						  (op===0&&func==='b100100)?cand:
						  (op===0&&func==='b100101)?cor:
						  (op===0&&func==='b101010)?slt:
						  (op===0&&func==='b101011)?sltu:
						  (op==='b001111)          ?lui:
						  (op==='b001000)          ?addi:					  
						  (op==='b001100)          ?andi:
						  (op==='b001101)          ?ori:
						  (op==='b100000)          ?lb:
						  (op==='b100001)          ?lh:
						  (op==='b100011)          ?lw:
						  (op==='b101000)          ?sb:
						  (op==='b101001)          ?sh:
						  (op==='b101011)          ?sw:
						  (op==='b100011)          ?lw:
						  (op===0&&func==='b011000)?mult:
						  (op===0&&func==='b011001)?multu:
						  (op===0&&func==='b011010)?div:
						  (op===0&&func==='b011011)?divu:
						  (op===0&&func==='b010000)?mfhi:
						  (op===0&&func==='b010010)?mflo:
						  (op===0&&func==='b010001)?mthi:
						  (op===0&&func==='b010011)?mtlo:
						  (op==='b000100)          ?beq:
						  (op==='b000101)          ?bne:
						  (op==='b000011)          ?jal:
						  (op===0&&func==='b001000)?jr:
						  (op===0&&func==='b111100)?new:
							nop;

	reg[31:0] dtype,etype,mtype,wtype;
	
	wire[15:0] dimm=dcode[15:0];
	wire[31:0] dzeroimm={{16{1'b0}},dimm},dsignimm={{16{dimm[15]}},dimm};
	
	wire [31:0] wriaddr=(type===add||type===sub||type===cand||type===cor||type===slt||type===sltu)?rd:
					(type===lui||type===addi||type===andi||type===ori)?rt:
					(type===lw||type===lh||type===lb)?rt:
					type===jal?31:
					(type===mflo||type===mfhi)?rd:
					0;
	
	wire [31:0] writime=(type===add||type===sub||type===cand||type===cor||type===slt||type===sltu)?2:
				(type===addi||type===andi||type===ori)?2:
				type===lui?1:
				(type===lw||type===lh||type===lb)?3:
				type===jal?1:
				(type===mflo||type===mfhi)?2:
				0;
				
	reg [31:0] dwriaddr,dwritime;
	reg [31:0] ewridata,ewriaddr,ewritime,in1,in2,ememswdata;
	reg [31:0] mwridata,mwriaddr,mwritime,memaddr,mmemswdata;
	reg [31:0] wwridata,wwriaddr,wwritime;
	assign w_grf_we=1;
	wire [31:0] memswdata=mrt!==0&&wwriaddr===mrt?wwridata:mmemswdata;

	assign m_data_addr=memaddr,m_inst_addr=mpc;
	assign m_data_wdata=mtype===sw?memswdata:
							mtype===sh?{2{memswdata[15:0]}}:
							mtype===sb?{4{memswdata[7:0]}}:0;
	assign w_grf_addr=wwriaddr,w_grf_wdata=wwridata,w_inst_addr=wpc;
	wire [1:0] byt=memaddr[1:0];
	wire [3:0] swbyte=(mtype===sw)?4'b1111:
							(mtype===sh)?(byt[1]===1?4'b1100:4'b0011):
							(mtype===sb)?(byt===0?4'b0001:byt===1?4'b0010:byt===2?4'b0100:4'b1000):
							0;
	assign m_data_byteen=swbyte;
	
	wire [31:0] rstime=drs===0?0:
						ewriaddr===drs?ewritime:
						mwriaddr===drs?mwritime:
						wwriaddr===drs?wwritime:0,
					rttime=drt===0?0:
						ewriaddr===drt?ewritime:
						mwriaddr===drt?mwritime:
						wwriaddr===drt?wwritime:0;
	
	reg [31:0] start,busy,rghi,rglo;
	wire [63:0] multres=$signed($signed({{32{ersdata[31]}},ersdata})*$signed({{32{ertdata[31]}},ertdata})),
					multures={{32{1'b0}},ersdata}*{{32{1'b0}},ertdata};
	
	integer bg;
	wire zuse=((dtype===add||dtype===sub||dtype===cand||dtype===cor||dtype===slt||dtype===sltu)&&(rstime>1||rttime>1))
				||((dtype===addi||dtype===andi||dtype===ori)&&rstime>1)
				||((dtype===lw||dtype===lh||dtype===lb)&&rstime>1)
				||((dtype===sw||dtype===sh||dtype===sb)&&(rstime>1||rttime>2))
				||((dtype===beq||dtype===bne)&&(rstime>0||rttime>0))
				||(dtype===jr&&rstime>0)
				||((dtype===mthi||dtype===mtlo)&&rstime>1)
				||((dtype===mult||dtype===multu||dtype===div||dtype===divu)&&(rstime>1||rttime>1))
				||((dtype===mult||dtype===multu||dtype===div||dtype===divu
					||dtype===mthi||dtype===mtlo||dtype===mfhi||
					dtype===mflo||dtype===new)&&(start===1||busy>2))
				;
	
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
						(dtype===bne&&drsdata!==drtdata)?dpc+4+(dsignimm<<2):
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
		pc='h3000;	
		for(i=0;i<=31;i=i+1) rg[i]<=0;
		busy<=0;
		rghi<=0;
		rglo<=0;
		bg<=0;
			
	end
	always @(posedge clk) //if(pc<'h4020)
	begin
		//$display("pc=%d",(pc-'h3000)/4);
		if(reset==1)
		begin
			pc<='h3000;
			for(i=0;i<=31;i=i+1) rg[i]<=0;
			busy<=0;
			rghi<=0;
			rglo<=0;
			bg<=0;
			
		end
		else
		begin
		
			bg<=bg+1;
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
			
			in1<=(dtype===add||dtype===sub||dtype===cand||dtype===cor||dtype===slt||dtype===sltu)?drgrs:
				(dtype===lui||dtype===addi||dtype===andi||dtype===ori)?drgrs:
				(dtype===lw||dtype===lh||dtype===lb)?drgrs:
				(dtype===sw||dtype===sh||dtype===sb)?drgrs:
				(dtype===mult||dtype===multu||dtype===div||dtype===divu)?drgrs:
				(dtype===mthi||dtype===mtlo)?drgrs:
				0;
			
			in2<=(dtype===add||dtype===sub||dtype===cand||dtype===cor||dtype===slt||dtype===sltu)?drgrt:
				dtype===addi?dsignimm:
				(dtype===andi||dtype===ori)?dzeroimm:
				(dtype===lw||dtype===lh||dtype===lb)?dsignimm:
				(dtype===sw||dtype===sh||dtype===sb)?dsignimm:
				(dtype===mult||dtype===multu||dtype===div||dtype===divu)?drgrt:
				0;
			
			start<=(zuse===0&&busy===0&&(dtype===mult||dtype===multu||dtype===div||dtype===divu))?1:0;
			busy<=(etype===mult||etype===multu)?5:
					(etype===div||etype===divu)?10:
					busy===0?busy:busy-1;
			rghi<=etype===mult?multres[63:32]:
					etype===multu?multures[63:32]:
					etype===div?$signed($signed(ersdata)%$signed(ertdata)):
					etype===divu?ersdata%ertdata:
					etype===mthi?ersdata:
					etype===new?rglo:
					rghi;
			rglo<=etype===mult?multres[31:0]:
					etype===multu?multures[31:0]:
					etype===div?$signed($signed(ersdata)/$signed(ertdata)):
					etype===divu?ersdata/ertdata:
					etype===mtlo?ersdata:
					etype===new?rghi:
					rglo;
			
			ewridata<=dtype===lui?dimm<<16:
					dtype===jal?dpc+8:
					0;
			
			mwridata<=etype===add?ersdata+ertdata:
					etype===sub?ersdata-ertdata:
					etype===cand?ersdata&ertdata:
					etype===cor?ersdata|ertdata:
					etype===slt?($signed(ersdata)<$signed(ertdata)?1:0):
					etype===sltu?(ersdata<ertdata?1:0):
					etype===addi?ersdata+in2:
					etype===andi?ersdata&in2:
					etype===ori?ersdata|in2:
					etype===mflo?rglo:
					etype===mfhi?rghi:
					ewridata;
			
			wwridata<=mtype===lw?m_data_rdata:
						mtype===lh?(memaddr[1]===1?{{16{m_data_rdata[31]}},m_data_rdata[31:16]}:
															{{16{m_data_rdata[15]}},m_data_rdata[15:0]}):
						mtype===lb?(memaddr[1:0]===0?{{24{m_data_rdata[7]}},m_data_rdata[7:0]}:
										memaddr[1:0]===1?{{24{m_data_rdata[15]}},m_data_rdata[15:8]}:
										memaddr[1:0]===2?{{24{m_data_rdata[23]}},m_data_rdata[23:16]}:
															  {{24{m_data_rdata[31]}},m_data_rdata[31:24]}):
						mwridata;
			
			if(wwriaddr!=0)
			begin
				//$display("%d@%h: $%d <= %h",$time,wpc,wwriaddr,wwridata);
				rg[wwriaddr]<=wwridata;
			end
			
			ememswdata<=drt===0?0:
							wwriaddr===drt?wwridata:
							rg[drt];
			mmemswdata<=ert===0?0:
							wwriaddr===ert?wwridata:
							ememswdata;
			memaddr<=ersdata+in2;
			/*
			if(mtype===sw)
			begin
				$display("%d@%h: *%h <= %h",$time,mpc,memaddr,mrt!==0&&wwriaddr===mrt?wwridata:mmemswdata);
				mem[memaddr>>2]<=mrt!==0&&wwriaddr===mrt?wwridata:mmemswdata;
			end
			*/
		end
	end
endmodule


