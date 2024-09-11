module demux1_4_bench;

reg Inp;
reg [1:0] S;

wire OutA;
wire OutB;
wire OutC;
wire OutD;

demux1_4 idut(  .Inp(Inp),
                .S(S),
                .OutA(OutA),
                .OutB(OutB),
                .OutC(OutC),
                .OutD(OutD));

initial begin
    Inp = 1'b1;
    S = 2'b00;
    #10

    Inp = 1'b1;
    S = 2'b01;
    #10

    Inp = 1'b1;
    S = 2'b10;
    #10

    Inp = 1'b1;
    S = 2'b11;
    #10
    $stop();
end


endmodule;