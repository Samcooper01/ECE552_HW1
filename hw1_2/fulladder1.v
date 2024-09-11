module fulladder1(A, B, Cin, S, Cout);
input A;
input B;
input Cin;
output S;
output Cout;

wire nand0;
wire nand1;
wire nand2;
wire nand3;
wire nand4;
wire nand5;
wire nand6;
wire nand7;
wire nand8;

nand2 nand_0(   .in1(A), 
                .in2(B),
                .out(nand0)); 

nand2 nand_1(   .in1(nand0), 
                .in2(A),
                .out(nand1)); 

nand2 nand_2(   .in1(nand0), 
                .in2(B),
                .out(nand2)); 

nand2 nand_3(   .in1(nand1), 
                .in2(nand2),
                .out(nand3)); 

nand2 nand_4(   .in1(nand3), 
                .in2(Cin),
                .out(nand4)); 

nand2 nand_5(   .in1(nand3), 
                .in2(nand4),
                .out(nand5)); 

nand2 nand_6(   .in1(nand4), 
                .in2(Cin),
                .out(nand6)); 

nand2 nand_7(   .in1(nand0), 
                .in2(nand4),
                .out(Cout)); 

nand2 nand_8(   .in1(nand5), 
                .in2(nand6),
                .out(S)); 

endmodule