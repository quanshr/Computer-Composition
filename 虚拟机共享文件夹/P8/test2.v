`timescale 1ns / 1ps

module test2(
    );
		wire b,c;
		test t1(
			.a({b,c})
		);

endmodule
