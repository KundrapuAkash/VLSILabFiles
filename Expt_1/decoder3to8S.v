module decoder2to4S(Y,A,OE);

    input[1:0] A;
    input OE;
    output[3:0] Y;
    wire[1:0] nA;

    not (nA[0],A[0]);
    not (nA[1],A[1]);

    and (Y[0],OE,nA[0],nA[1]);
    and (Y[1],OE, A[0],nA[1]);
    and (Y[2],OE,nA[0], A[1]);
    and (Y[3],OE, A[0], A[1]);

endmodule


module decoder3to8S(Y,A);

    input[2:0] A;
    output[7:0] Y;
    wire nA;

    not (nA,A[2]);

    decoder2to4S dec1 (Y[3:0],A[1:0],nA);
    decoder2to4S dec2 (Y[7:4],A[1:0],A[2]);

endmodule
