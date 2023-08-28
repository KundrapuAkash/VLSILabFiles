module decoder2to4B(Y,A,OE);

    input[1:0] A;
    input OE;
    output[3:0] Y;

    assign Y[0] = OE & ~A[1] & ~A[0];
    assign Y[1] = OE & ~A[1] &  A[0];
    assign Y[2] = OE &  A[1] & ~A[0];
    assign Y[3] = OE &  A[1] &  A[0];

endmodule

module decoder3to8B(Y,A);

    input[2:0] A;
    output[7:0] Y;

    decoder2to4B dec1 (Y[3:0],A[1:0],~A[2]);
    decoder2to4B dec2 (Y[7:4],A[1:0], A[2]);

endmodule
