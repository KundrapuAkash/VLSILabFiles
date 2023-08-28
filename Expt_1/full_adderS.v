module half_adder(S,C,A,B);

    input A,B;
    output S,C;

    xor (S,A,B);
    and (C,A,B);

endmodule

module full_adderS(S,Cout,Cin,A,B);

    input Cin,A,B;
    output S,Cout;

    wire t1,t2,t3;

    half_adder ha1 (t1,t2,A,B);
    half_adder ha2 (S,t3,Cin,t1);
    or (Cout,t2,t3);

endmodule