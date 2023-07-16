module GRFmux(rt,rd,ALUans,memdata,pc,JAL,LW,r_instr,dstReg,WD);
input [4:0] rt,rd;
input [31:0] ALUans;
input [31:0] memdata;
input [31:0] pc;
input JAL,LW,r_instr;
output [4:0] dstReg;
output [31:0] WD;
assign dstReg=(JAL)?31:
      (r_instr)?rd:rt;
assign WD=(JAL)?(pc+4):
                (LW)?memdata:ALUans;
endmodule