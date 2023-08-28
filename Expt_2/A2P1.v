module mux(y,a,b,s);

    input a,b,s;
    output y;
    wire[2:0] t;

    not G1(t[0],s);
    and G2(t[1],t[0],a);
    and G3(t[2],s,b);
    or G4(y,t[1],t[2]);

endmodule

module submux(out,in0,in1,sel);

    input[7:0] in0,in1;
    input sel;
    output[7:0] out;

    mux M0(out[0],in0[0],in1[0],sel);
    mux M1(out[1],in0[1],in1[1],sel);
    mux M2(out[2],in0[2],in1[2],sel);
    mux M3(out[3],in0[3],in1[3],sel);
    mux M4(out[4],in0[4],in1[4],sel);
    mux M5(out[5],in0[5],in1[5],sel);
    mux M6(out[6],in0[6],in1[6],sel);
    mux M7(out[7],in0[7],in1[7],sel);

endmodule

module A2P1(out,in,sel,mode);

    input[7:0] in;
    input[2:0] sel;
    input mode;
    output[7:0] out;
    wire[7:0] t1,t2;
    wire[6:0] t;

    and M0(t[0],in[0],mode);
    submux S1(t1,in,{t[0],in[7:1]},sel[0]);
    and M1(t[1],t1[0],mode);
    and M2(t[2],t1[1],mode);
    submux S2(t2,t1,{t[2],t[1],t1[7:2]},sel[1]);
    and M3(t[3],t2[0],mode);
    and M4(t[4],t2[1],mode);
    and M5(t[5],t2[2],mode);
    and M6(t[6],t2[3],mode);
    submux S3(out,t2,{t[6],t[5],t[4],t[3],t2[7:4]},sel[2]);

endmodule