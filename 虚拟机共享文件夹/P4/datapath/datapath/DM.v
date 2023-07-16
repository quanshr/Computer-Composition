module DM(addr,data,clk,reset,str,memdata,pc);
input [31:0] addr;
input [31:0] data;
input [31:0] pc;
input clk;
input reset;
input str;
output [31:0] memdata;
reg [31:0]matrix[3071:0];
integer i;
assign memdata=matrix[addr[13:2]];
always @(posedge clk ) begin
     if(reset) begin
       for(i=0;i<=3071;i=i+1) begin
         matrix[i]=32'h00000000;
       end
     end
     else if(str) begin
         matrix[addr[13:2]]=data;
         $display("@%h: *%h <= %h", pc, addr, data);
     end
end
endmodule