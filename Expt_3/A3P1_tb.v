module A3P1_tb;

    reg in;
    reg[2:0] sel;
    wire[7:0] out;
    generate_demux D1 (out, in, sel);

    initial
    begin
        $dumpfile("A3P1");
        $dumpvars;
    end

    initial
    begin
        $monitor("Time = %3d, input = %b, select = %b ; output = %b",$time,in,sel,out);
        #2 in = 1'b1 ; sel = 3'b000;
        #2 in = 1'b1 ; sel = 3'b001;
        #2 in = 1'b1 ; sel = 3'b010;
        #2 in = 1'b1 ; sel = 3'b011;
        #2 in = 1'b1 ; sel = 3'b100;
        #2 in = 1'b1 ; sel = 3'b101;
        #2 in = 1'b1 ; sel = 3'b110;
        #2 in = 1'b1 ; sel = 3'b111;
        #2 $finish;
    end

endmodule