module IM(pc,instr);
input [31:0] pc;
output [31:0] instr;
reg [31:0] matrix[4095:0];
wire [11:0] addr={2'b0,pc[11:2]};
assign instr=matrix[addr];
integer i;
initial begin
$readmemh("code.txt",matrix);
end
endmodule