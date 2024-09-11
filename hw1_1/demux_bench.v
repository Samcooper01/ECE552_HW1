module demux_bench;

reg Inp;
reg S;
wire OutA;
wire OutB;

demux1_2 idut(  .Inp(Inp), 
                .S(S), 
                .OutA(OutA), 
                .OutB(OutB));

initial begin

    Inp = 1'b0;
    S = 1'b0;
    #10

    Inp = 1'b1;
    S = 1'b0;
    #10

    Inp = 1'b0;
    S = 1'b1;
    #10

    Inp = 1'b1;
    S = 1'b1;
    #10
    $stop();
end

endmodule