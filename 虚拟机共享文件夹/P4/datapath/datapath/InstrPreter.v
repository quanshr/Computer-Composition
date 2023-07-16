module InstrPreter(instr,rs,rt,rd,imm,funct,opcode,imm_j,shamt);
input [31:0] instr;
output [4:0] rs,rt,rd;
output [15:0] imm;
output [25:0] imm_j;
output [5:0] funct,opcode;
output [4:0] shamt;
assign opcode=instr[31:26];
assign funct=instr[5:0];
assign rs=instr[25:21];
assign rt=instr[20:16];
assign rd=instr[15:11];
assign shamt=instr[10:6];
assign imm=instr[15:0];
assign imm_j=instr[25:0];
endmodule 