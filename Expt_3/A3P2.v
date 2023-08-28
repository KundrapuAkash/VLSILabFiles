module ALU (c,out,a,b,sel);

    input[7:0] a,b;
    input[2:0] sel;
    output[7:0] out;
    output c;

    assign {c,out} = sel[2] ?
                ( sel[1] ? (sel[0] ? {1'b0,a[0],a[7:1]} : {1'b0,a[6:0],a[7]} ) : (sel[0] ? {1'b0,a^b} : {1'b0,~a} )  ) :
                ( sel[1] ? (sel[0] ? {1'b0,a>>1} : {1'b0,a<<1} )   : (sel[0] ? a-b : a+b ) ) ;
    

endmodule