`timescale 1ns / 1ps

`define SR rg[12]
`define Cause rg[13]
`define EPC rg[14]

module CP0(
		input clk,					//	时钟信号。
		input reset,				//	复位信号。
		input en,	   			//	写使能信号。
		input [4:0] CP0Add,		// 寄存器地址。
		input [31:0] CP0In,		//	CP0 写入数据。
		output [31:0] CP0Out,  	//	CP0 读出数据。
		input [31:0] VPC,			//	受害 PC。
		input BDIn,					//	是否是延迟槽指令。
		input [4:0] ExcCodeIn,  //	记录异常类型。
		input interrupt,tIBQ1,tIBQ0,	 	//	输入中断信号。
		input EXLClr,	  	 		//	用来复位 EXL。
		output[31:0] EPCOut,		//	EPC 的值。
		output Req	  				//	进入处理程序请求。
    );
		
		wire [5:0] HWInt={3'b000,interrupt,tIBQ1,tIBQ0};
		reg [31:0] rg[12:14];
		assign Req=(~SR[1])&((|ExcCodeIn)|(SR[0]&(|(HWInt&(SR[15:10]>>10)))));
		always @(posedge clk)
		begin
			if(reset==1)
			begin
				SR<=0;
				Cause<=0;
				EPC<=0;
			end
			else
			begin
				if(Req===1)
				begin
					SR[1]<=1;
					Cause[31]<=BDIn;
					Cause[15:10]<=HWInt;
					Cause[6:2]<=(SR[0]&(|(HWInt&(SR[15:10]>>10))))===1?0:
										ExcCodeIn;
					
					EPC<=BDIn===1?VPC-4:VPC;
				end
			end
		
		end

endmodule
