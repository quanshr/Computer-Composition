module mips(clk,reset);
input clk;
input reset;
//閹貉冨煑娣団€冲�
wire [3:0] ALUctrl;
wire r_instr,ExtOp,ALUsrc,WE,LW,branch,JAL,str,JR;
wire [4:0] A1,A2,A3;
wire [4:0] dstReg;
wire [15:0] imm;
wire [5:0] funct,opcode;
wire [25:0] imm_j;
wire [4:0]shamt;
wire [31:0] instr;
wire [31:0] A,B,ALUans;  
wire [31:0] RD1,RD2; 
wire [31:0] addr,data,memdata;
wire [31:0] WD; 
wire [31:0] pc; 
ALU alu(.ALUctrl(ALUctrl),.A(A),.B(B),.ALUans(ALUans));
ALUmux alu_mux(.RD1(RD1),.RD2(RD2),.imm(imm),.A(A),.B(B),.ALUsrc(ALUsrc),.ExtOp(ExtOp));
DM dm(.addr(addr),.data(data),.clk(clk),.reset(reset),.str(str),.memdata(memdata),.pc(pc));
DMmux dmMux(.ALUans(ALUans),.RD2(RD2),.addr(addr),.data(data));
GRF grf(.A1(A1),.A2(A2),.A3(dstReg),.WD(WD),.WE(WE),.RD1(RD1),.RD2(RD2),.reset(reset),.clk(clk),.pc(pc));
IM im(.pc(pc),.instr(instr));
InstrPreter instrP(.instr(instr),.rs(A1),.rt(A2),.rd(A3),
        .imm(imm),.funct(funct),.opcode(opcode),.imm_j(imm_j),.shamt(shamt));
GRFmux muxGrf(.rt(A2),.rd(A3),.ALUans(ALUans),.memdata(memdata),.pc(pc),.JAL(JAL)
,.LW(LW),.r_instr(r_instr),.dstReg(dstReg),.WD(WD));
PC pcer(.clk(clk),.reset(reset),.pc(pc),.imm(imm),.branch(branch),.ALUans(ALUans),.
JAL(JAL),.imm_j(imm_j),.ra(RD1),.JR(JR));
Controller ctrl(.opcode(opcode),.funct(funct),.ALUctrl(ALUctrl),.r_instr(r_instr)
,.ExtOp(ExtOp),.ALUsrc(ALUsrc),.WE(WE),.LW(LW),.branch(branch),.JAL(JAL),.str(str),.JR(JR));



endmodule