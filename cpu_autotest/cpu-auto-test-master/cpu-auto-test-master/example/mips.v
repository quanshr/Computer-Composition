module mips (
	input clk,
	input reset
);
	always @(posedge clk) begin
		if(reset);
		else
			$display("@%h: $%2d <= %h", 32'b0, 0, 32'b0);
	end
endmodule //mips