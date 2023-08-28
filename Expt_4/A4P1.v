module A4P1(out,in,clk);

    input in, clk;
    output reg out;

    reg[2:0] state;
    parameter RMD0 = 3'b000, RMD1 = 3'b001, RMD2 = 3'b010, RMD3 = 3'b011, RMD4 = 3'b100;

    always@(posedge clk) //FSM State Conversions
    begin
        case(state)
        RMD0: state <= in ? RMD1 : RMD0;
        RMD1: state <= in ? RMD3 : RMD2;
        RMD2: state <= in ? RMD0 : RMD4;
        RMD3: state <= in ? RMD2 : RMD1;
        RMD4: state <= in ? RMD4 : RMD3;
        default: state <= RMD0;
    endcase
    end

    always @(state) //Output Assignment 
    begin
        case(state)
            RMD0 : out = 1'b1;    //1 if divisible by 5
            default: out = 1'b0;  //Else 0
        endcase
    end

endmodule