module PC(clk,reset,pc,imm,branch,ALUans,JAL,imm_j,ra,JR);
input clk,reset;
output reg [31:0] pc;
input branch,JAL;
input [15:0] imm;
input [25:0] imm_j;
input [31:0] ALUans;
input [31:0] ra;
input JR;
always@(posedge clk) begin
  if(reset) 
    pc<=32'h0000_3000;
  else begin
    pc=pc+4;
    if(branch&&ALUans[0]) begin
      pc=pc+{{14{imm[15]}},imm,2'b00};
    end
    else if(JAL) begin
      pc={pc[31:28],imm_j,2'b00};
    end
    else if(JR) begin
      pc<=ra;
    end
  end
end
//pc state machine
endmodule