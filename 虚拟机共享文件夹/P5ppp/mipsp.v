`timescale 1ns / 1ps

module mipsp(
		input clk,
		input reset
    );
	integer i;
	wire ifjump;
	wire[31:0] jumppc;

	wire [31:0] dpc,dcode,epc,ecode,mpc,mcode,wpc,wcode;
	wire [4:0] mrgwriaddr,wrgwriaddr;
	wire [31:0] mrgwritime,wrgwritime;
	
	wire [31:0] eout1,eout2,rgwridata;
	wire [31:0] mrgwridata=eout1,wrgwridata=rgwridata;
	
	wire [4:0] ergwriaddr;
	wire [31:0] ergwridata=eout1;
	wire [31:0] ergwritime;
	
	wire [31:0] rsdata,rtdata;
	wire zuse;
	
	liushuiF f(
		.clk(clk),.reset(reset),
		.ifjump(ifjump),.jumppc(jumppc),
		.npc(dpc),.ncode(dcode),
		.zuse(zuse)
	);

	liushuiD d(
		.clk(clk),.reset(reset),
		
		.pc(dpc),.code(dcode),.wpc(wpc),
		.npc(epc),.ncode(epc),.out1(rsdata),.out2(rtdata),
		
		.nrgwriaddr(ergwriaddr),
		.nrgwritime(ergwritime),
		
		.M_rgwriaddr(mrgwriaddr),.W_rgwriaddr(wrgwriaddr),
		.M_rgwridata(mrgwridata),.W_rgwridata(wrgwridata),
		.M_rgwritime(mrgwritime),.W_rgwritime(wrgwritime),
		.E_rgwriaddr(ergwriaddr),
		.E_rgwritime(ergwritime),
		
		.ifjump(ifjump),
		.jumppc(jumppc)
	);
	
	liushuiE e(
		.clk(clk),.reset(reset),
		
		.pc(epc),.code(ecode),.in1(rsdata),.in2(rtdata),
		.npc(mpc),.ncode(mcode),.out1(eout1),.out2(eout2),
		
		// 本级in1代表  rsdata ,in2代表   rtdata
		//     ou1代表  memaddr ，out2代表 memwridata
		
		.rgwriaddr(ergwriaddr),
		.rgwritime(ergwritime),
		.nrgwriaddr(mrgwriaddr),
		.nrgwritime(mrgwritime),
		
		
		.M_rgwriaddr(mrgwriaddr),.W_rgwriaddr(wrgwriaddr),
		.M_rgwridata(mrgwridata),.W_rgwridata(wrgwridata),
		.M_rgwritime(mrgwritime),.W_rgwritime(wrgwritime)
		
	);
	
	liushuiM m(
		.clk(clk),.reset(reset),
		
		.pc(mpc),.code(mcode),.in1(eout1),.in2(eout2),
		.npc(wpc),.ncode(wcode),.out1(rgwridata),
		
		// 本级in1代表  memaddr ,in2代表   memwridata
		//     ou1代表  rgwridata ，out2代表 none
		
		.rgwriaddr(mrgwriaddr),
		.rgwritime(mrgwritime),
		.nrgwriaddr(wrgwriaddr),
		.nrgwritime(wrgwritime),
		
		.M_rgwriaddr(mrgwriaddr),.W_rgwriaddr(wrgwriaddr),
		.M_rgwridata(mrgwridata),.W_rgwridata(wrgwridata),
		.M_rgwritime(mrgwritime),.W_rgwritime(wrgwritime)
	);
endmodule
 