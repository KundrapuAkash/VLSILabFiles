module generate_demux(out, in, sel);

    input[2:0] sel;
    input in;
    output[7:0] out;

    assign out[0] = (sel == 0) ? in : 0;
    assign out[1] = (sel == 1) ? in : 0;
    assign out[2] = (sel == 2) ? in : 0;
    assign out[3] = (sel == 3) ? in : 0;
    assign out[4] = (sel == 4) ? in : 0;
    assign out[5] = (sel == 5) ? in : 0;
    assign out[6] = (sel == 6) ? in : 0;
    assign out[7] = (sel == 7) ? in : 0;
    
endmodule
