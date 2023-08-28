module decoder3to8S_tb;

    reg[2:0] A;
    wire[7:0] Y;
    decoder3to8S dut(Y,A);

    initial
	begin
		$dumpfile("decoder3to8S.vcd");
		$dumpvars;
	end

    initial
	begin
		$monitor("Time=%5d,%b,%b,%b,%b", $time, A[2], A[1], A[0], Y);
		#2 A=3'b000;
		#2 A=3'b001;
		#2 A=3'b010;
		#2 A=3'b011;
        #2 A=3'b100;
		#2 A=3'b101;
		#2 A=3'b110;
		#2 A=3'b111;
		#2 $finish;
	end

endmodule