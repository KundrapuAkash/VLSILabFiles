module A2P2_tb;

    reg[7:0] in;
    reg[2:0] sel;
    reg mode;
    wire[7:0] out;
    A2P2 dut(out,in,sel,mode);

        initial
	begin
		$dumpfile("A2P2.vcd");
		$dumpvars;
	end

    initial
	begin
		$monitor("Time=%5d, in=%b, sel=%b, out=%b, mode=%b", $time,in,sel,out,mode);
		#2 sel=3'b001;in=8'b11000011;mode=1'b0;
        #2 sel=3'b101;in=8'b11000011;mode=1'b0;
        #2 sel=3'b001;in=8'b11000011;mode=1'b1;
        #2 sel=3'b101;in=8'b11000011;mode=1'b1;
        #2 $finish;
    end

endmodule