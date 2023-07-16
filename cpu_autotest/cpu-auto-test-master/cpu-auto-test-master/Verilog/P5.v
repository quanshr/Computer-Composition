// `include "mips.v"

module tb (
	
);
	reg clk, reset;
	initial begin
		$dumpfile("wave.vcd");
		$dumpvars();
		clk = 0;
		reset = 1;
		#15 reset = 0;


		#100000 $finish;
	end
	mips mips(.clk(clk), .reset(reset));
	always #10 clk = ~clk;
endmodule //tb