module GRF(A1,A2,A3,WD,WE,RD1,RD2,reset,clk,pc);
input [4:0] A1;
input [4:0] A2;
input [4:0] A3;
input [31:0] pc;
input reset,clk;
input [31:0] WD;
input WE;
output [31:0] RD1;
output [31:0] RD2;
reg [31:0] matrix[0:31];
assign RD1=matrix[A1];
assign RD2=matrix[A2];
integer i;
always @(posedge clk ) begin
    if(reset) begin
       i=0;
       while(i<=31)begin
         matrix[i]<=0;
         i=i+1;
       end
    end
    else begin
      if(WE) begin
        if(A3!=32'h0000_0000) begin
           matrix[A3]<=WD;
           $display("@%h: $%d <= %h", pc, A3, WD);
        end
      end
    end
end
endmodule