module ALUmux(RD1,RD2,imm,A,B,ALUsrc,ExtOp);
input [31:0] RD1;
input [31:0] RD2;
input [15:0] imm;
input ALUsrc;
input ExtOp;
output [31:0] A;
output [31:0] B;
assign A=RD1;
wire [31:0] immTmp;
assign immTmp=(ExtOp)?{{16{imm[15]}},imm}:
         {{16{1'b0}},imm};
assign B=(ALUsrc)?immTmp:RD2;
endmodule