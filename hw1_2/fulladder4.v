module fulladder4(A, B, Cin, S, Cout);
input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] S;
output Cout;

wire cout_0;
wire cout_1;
wire cout_2;

fulladder1 fulladder_0( .A(A[0]),
                        .B(B[0]),
                        .Cin(Cin),
                        .S(S[0]),
                        .Cout(cout_0));

fulladder1 fulladder_1( .A(A[1]),
                        .B(B[1]),
                        .Cin(cout_0),
                        .S(S[1]),
                        .Cout(cout_1));

fulladder1 fulladder_2( .A(A[2]),
                        .B(B[2]),
                        .Cin(cout_1),
                        .S(S[2]),
                        .Cout(cout_2));

fulladder1 fulladder_3( .A(A[3]),
                        .B(B[3]),
                        .Cin(cout_2),
                        .S(S[3]),
                        .Cout(Cout));

endmodule