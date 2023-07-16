module Controller(opcode,funct,ALUctrl,r_instr,ExtOp,ALUsrc,WE,LW,branch,JAL,str,JR);
input [5:0] opcode;
input [5:0] funct;
output reg [3:0] ALUctrl;//shift,neg,
output reg r_instr,ExtOp,ALUsrc,WE,LW,branch,JAL,str,JR;
wire add,sub,ori,lw,sw,beq,lui,jal,jr;//閼绢偄绻昻op
assign add=((|opcode)==0)&&funct==6'b100000;
assign sub=((|opcode)==0)&&funct==6'b100010;
assign ori=(opcode==6'b001101);
assign lw=(opcode==6'b100011);
assign sw=(opcode==6'b101011);
assign beq=(opcode==6'b000100);
assign lui=(opcode==6'b001111);
assign jal=(opcode==6'b000011);
assign jr=((|opcode)==0)&&funct==6'b001000;
always @(*) begin
    if(add) begin
      ALUctrl=4'b0010;
      r_instr=1;
      ALUsrc=0;
      WE=1;
      LW=0;
      branch=0;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=0;
    end
    else if(sub) begin
      ALUctrl=4'b0110;
      r_instr=1;
      ALUsrc=0;
      WE=1;
      LW=0;
      branch=0;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=0;
    end
    else if(ori) begin
      ALUctrl=4'b0001;
      r_instr=0;
      ALUsrc=1;
      WE=1;
      LW=0;
      branch=0;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=0;
    end
    else if(lw) begin
      ALUctrl=4'b0010;
      r_instr=0;
      ALUsrc=1;
      WE=1;
      LW=1;
      branch=0;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=1;
    end
    else if(sw) begin
      ALUctrl=4'b0010;
      r_instr=0;
      ALUsrc=1;
      WE=0;
      LW=0;
      branch=0;
      JAL=0;
      str=1;
      JR=0;
      ExtOp=1;
    end
    else if(beq) begin
      ALUctrl=4'b0011;
      r_instr=0;
      ALUsrc=0;
      WE=0;
      LW=0;
      branch=1;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=1;
    end
    else if(lui) begin
      ALUctrl=4'b1010;
      r_instr=0;
      ALUsrc=1;
      WE=1;
      LW=0;
      branch=0;
      JAL=0;
      str=0;
      JR=0;
      ExtOp=0;
    end
    else if(jal) begin
      r_instr=0;
      WE=1;
      LW=0;
      branch=0;
      JAL=1;
      str=0;
      JR=0;
    end
    else if(jr) begin
      r_instr=1;
      WE=0;
      LW=0;
      branch=0;
      JAL=0;
      str=0;
      JR=1;  
    end
    else begin
      str=0;
      WE=0;
    end
end
endmodule 