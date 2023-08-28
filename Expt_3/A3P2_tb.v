module A3P2_tb;

    reg[7:0] a,b;
    reg[2:0] sel;
    wire[7:0] out;
    wire c;
    ALU A1 (c, out, a, b, sel);

    initial
    begin
        $dumpfile("A3P2");
        $dumpvars;
    end

    initial
    begin
        $monitor("Time = %3d, a = %b, b = %b ; sel = %d; out = %b; c = %b",$time,a,b,sel,out,c);
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b000 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b001 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b010 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b011 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b100 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b101 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b110 ;
        #2 a = 8'b11001010 ; b =8'b10010110 ; sel = 3'b111 ;
        #2 $finish;
    end

endmodule