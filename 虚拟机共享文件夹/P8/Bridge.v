`timescale 1ns / 1ps

module Bridge(

		output [31:0] m_data_addr,    // DM 读写地址
		input  [31:0] m_data_rdata,   // DM 读取数据
		output [31:0] m_data_wdata,   // DM 待写入数据
		output [3 :0] m_data_byteen,  // DM 字节使能信号
		output [31:0] m_inst_addr,    // M 级 PC

		input [31:0] cpu_m_data_addr,    // DM 读写地址
		output  [31:0] cpu_m_data_rdata,   // DM 读取数据
		input [31:0] cpu_m_data_wdata,   // DM 待写入数据
		input [3 :0] cpu_m_data_byteen,  // DM 字节使能信号
		input [31:0] cpu_m_inst_addr,    // M 级 PC
		
		output [31:0] m_int_addr,     // 中断发生器待写入地址
		output [3 :0] m_int_byteen,   // 中断发生器字节使能信号		

		output tWE0,tWE1,
		output [31:2] tAddr0,tAddr1,
		output [31:0] tDin0,tDin1,
		input [31:0] tDout0,tDout1
	
		);
		
		assign m_data_addr=cpu_m_data_addr;
		assign m_data_wdata=cpu_m_data_wdata;
		assign m_data_byteen=cpu_m_data_byteen;
		assign m_inst_addr=cpu_m_inst_addr;

		wire [1:0] target=(cpu_m_data_addr<'h3000)?0:
								(cpu_m_data_addr<'h7f10)?1:
								(cpu_m_data_addr<'h7f20)?2:3;

		assign cpu_m_data_rdata=target===0?m_data_rdata:
									target===1?tDout0:
									target===2?tDout1:0;

		assign m_int_addr=cpu_m_data_addr;
		assign m_int_byteen=target===3?cpu_m_data_byteen:4'b0;

		assign tWE0=target===1&&cpu_m_data_byteen==='b1111;
		assign tWE1=target===2&&cpu_m_data_byteen==='b1111;
		assign tAddr0=cpu_m_data_addr[31:2];
		assign tAddr1=cpu_m_data_addr[31:2];
		assign tDin0=cpu_m_data_wdata;
		assign tDin1=cpu_m_data_wdata;
		

endmodule
