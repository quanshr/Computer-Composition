module DMmux(ALUans,RD2,addr,data);
input [31:0]ALUans;
input [31:0]RD2;
output [31:0]data;
output [31:0]addr;
assign data=RD2;
assign addr=ALUans;
endmodule