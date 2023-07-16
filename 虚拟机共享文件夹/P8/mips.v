`timescale 1ns / 1ps

module mips(
		input clk,                    // 时钟信号
		input reset,                  // 同步复位信号
		input interrupt,              // 外部中断信号
		output [31:0] macroscopic_pc, // 宏观 PC

		output [31:0] i_inst_addr,    // IM 读取地址（取指 PC）
		input  [31:0] i_inst_rdata,   // IM 读取数据

		output [31:0] m_data_addr,    // DM 读写地址
		input  [31:0] m_data_rdata,   // DM 读取数据
		output [31:0] m_data_wdata,   // DM 待写入数据
		output [3 :0] m_data_byteen,  // DM 字节使能信号

		output [31:0] m_int_addr,     // 中断发生器待写入地址
		output [3 :0] m_int_byteen,   // 中断发生器字节使能信号

		output [31:0] m_inst_addr,    // M 级 PC

		output w_grf_we,              // GRF 写使能信号
		output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
		output [31:0] w_grf_wdata,    // GRF 待写入数据

		output [31:0] w_inst_addr     // W 级 PC
	);
	
		wire [31:0] b_data_addr,b_data_rdata,b_data_wdata,b_inst_addr;
		wire [3:0] b_data_byteen;
		
		wire tIBQ0,tIBQ1;
		
		CPU cpu(
			.clk(clk),
			.reset(reset),
			.macroscopic_pc(macroscopic_pc),

			.i_inst_addr(i_inst_addr),
			.i_inst_rdata(i_inst_rdata),

			.m_data_addr(b_data_addr),
			.m_data_rdata(b_data_rdata),
			.m_data_wdata(b_data_wdata),
			.m_data_byteen(b_data_byteen),
			.m_inst_addr(b_inst_addr),

			.w_grf_we(w_grf_we),
			.w_grf_addr(w_grf_addr),
			.w_grf_wdata(w_grf_wdata),

			.w_inst_addr(w_inst_addr),
						
			.interrupt(interrupt),	//	输入中断信号。
			.tIBQ1(tIBQ1),
			.tIBQ0(tIBQ0)
		);
		
		wire tWE0,tWE1;
		wire [31:2] tAddr0,tAddr1;
		wire [31:0] tDin0,tDin1,tDout0,tDout1;
		
		Bridge bridge(
			.m_data_addr(m_data_addr),    	// DM 读写地址
			.m_data_rdata(m_data_rdata),   	// DM 读取数据
			.m_data_wdata(m_data_wdata),   	// DM 待写入数据
			.m_data_byteen(m_data_byteen), 	// DM 字节使能信号
			.m_inst_addr(m_inst_addr),    	// M 级 PC
			
			.cpu_m_data_addr(b_data_addr),   // CPU  DM 读写地址
			.cpu_m_data_rdata(b_data_rdata), // DM 读取数据
			.cpu_m_data_wdata(b_data_wdata), // DM 待写入数据
			.cpu_m_data_byteen(b_data_byteen), // DM 字节使能信号
			.cpu_m_inst_addr(b_inst_addr),   // M 级 PC
			
			.m_int_addr(m_int_addr),     		// 中断发生器待写入地址
			.m_int_byteen(m_int_byteen),   	// 中断发生器字节使能信号
			
			.tAddr0(tAddr0),        			//与timer0和timer1接口
			.tWE0(tWE0),
			.tDin0(tDin0),
			.tDout0(tDout0),
			
			.tAddr1(tAddr1),
			.tWE1(tWE1),
			.tDin1(tDin1),
			.tDout1(tDout1)
		);
		
		TC timer0(
			 .clk(clk),
			 .reset(reset),
			 .Addr(tAddr0),
			 .WE(tWE0),
			 .Din(tDin0),
			 .Dout(tDout0),
			 .IRQ(tIBQ0)
		);
		TC timer1(
			 .clk(clk),
			 .reset(reset),
			 .Addr(tAddr1),
			 .WE(tWE1),
			 .Din(tDin1),
			 .Dout(tDout1),
			 .IRQ(tIBQ1)
		);
	
endmodule
