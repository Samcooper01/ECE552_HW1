module fulladder1_bench;

reg A;
reg B;
reg Cin;
wire S;
wire Cout;

fulladder1 iDut(.A(A), 
                .B(B), 
                .Cin(Cin), 
                .S(S), 
                .Cout(Cout));

initial 
begin

    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;
    #10;

    A = 1'b0;
    B = 1'b0;
    Cin = 1'b1;
    #10;

    A = 1'b0;
    B = 1'b1;
    Cin = 1'b0;
    #10;

    A = 1'b0;
    B = 1'b1;
    Cin = 1'b1;
    #10;

    A = 1'b1;
    B = 1'b0;
    Cin = 1'b0;
    #10;

    A = 1'b1;
    B = 1'b0;
    Cin = 1'b1;
    #10;

    A = 1'b1;
    B = 1'b1;
    Cin = 1'b0;
    #10;

    A = 1'b1;
    B = 1'b1;
    Cin = 1'b1;
    #10;
end

endmodule