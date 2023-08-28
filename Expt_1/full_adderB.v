module half_adder(S,C,A,B);

    input A,B;
    output S,C;

    assign S = A^B;
    assign C = A&B;

endmodule

module full_adderB(S,Cout,Cin,A,B);

    input Cin,A,B;
    output S,Cout;

    wire t1,t2,t3;

    half_adder ha1 (t1,t2,A,B);
    half_adder ha2 (S,t3,Cin,t1);
    assign Cout = t2|t3;

endmodule