module full_adderS_tb;

    reg A,B,Cin;
    wire S,Cout;
    full_adderS dut(S,Cout,Cin,A,B);

        initial
	begin
		$dumpfile("full_adderS.vcd");
		$dumpvars;
	end

    initial
	begin
		$monitor("Time=%5d,%b,%b,%b,%b,%b", $time, A, B, Cin, S, Cout);
		#2 A=0;B=0;Cin=0;
		#2 A=0;B=1;Cin=0;
        #2 A=1;B=0;Cin=0;
        #2 A=1;B=1;Cin=0;
        #2 A=0;B=0;Cin=1;
		#2 A=0;B=1;Cin=1;
        #2 A=1;B=0;Cin=1;
        #2 A=1;B=1;Cin=1;
        #2 $finish;
    end

endmodule