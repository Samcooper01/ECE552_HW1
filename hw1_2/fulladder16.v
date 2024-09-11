module fulladder16(A, B, S, Cout);
input [15:0] A;
input [15:0] B;
output [15:0] S;
output Cout;

wire cout_0;
wire cout_1;
wire cout_2;

fulladder4 fulladder4_0(.A(A[3:0]), 
                        .B(B[3:0]), 
                        .Cin(0),
                        .S(S[3:0]),
                        .Cout(cout_0));

fulladder4 fulladder4_1(.A(A[7:4]), 
                        .B(B[7:4]), 
                        .Cin(cout_0),
                        .S(S[7:4]),
                        .Cout(cout_1));

fulladder4 fulladder4_2(.A(A[11:8]), 
                        .B(B[11:8]), 
                        .Cin(cout_1),
                        .S(S[11:8]),
                        .Cout(cout_2));

fulladder4 fulladder4_3(.A(A[15:12]), 
                        .B(B[15:12]), 
                        .Cin(cout_2),
                        .S(S[15:12]),
                        .Cout(Cout));

endmodule