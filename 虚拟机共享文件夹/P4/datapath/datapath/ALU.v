module ALU(ALUctrl,A,B,ALUans);
input [3:0]ALUctrl;
input [31:0] A;
input [31:0] B;
output  reg [31:0] ALUans;
reg [31:0] B_;
always@(*) begin
   B_=(ALUctrl[2]==1)?(~B):B;
   case (ALUctrl[1:0])
   2'b00: ALUans=A&B_;
   2'b01: ALUans=A|B_;
   2'b10: ALUans=A+B_+{{31{1'b0}},ALUctrl[2]};
   2'b11: ALUans={{31{1'b0}},A==B_};
   endcase
   ALUans=(ALUctrl[3])?({ALUans[15:0],{16{1'b0}}}):ALUans;
end
endmodule