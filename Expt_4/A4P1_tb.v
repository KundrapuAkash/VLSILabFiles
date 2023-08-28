module A4P1_tb;

    reg in, clk;
    wire out;

    A4P1 DUT(out, in, clk);

    initial
    begin
        $dumpfile("A4P1.vcd");
        $dumpvars;
    end

    initial
    begin
        clk = 1'b0;
        forever #1 clk = ~clk;
    end

    initial
    begin
        forever #2 $display("Time = %d, Input = %b, Output = %b", $time, in, out);
    end

    initial
    begin
        #2 in = 1'b1;
        #2 in = 1'b0;
        #2 in = 1'b1;
        #2 in = 1'b0;
        #2 in = 1'b1;
        #2 in = 1'b0;
        #2 in = 1'b1;
        #2 in = 1'b1;
        #2 $finish;
    end

endmodule