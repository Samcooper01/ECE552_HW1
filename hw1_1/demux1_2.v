module demux1_2 (Inp, S, OutA, OutB);
input Inp;
input S;
output OutA; //00
output OutB; //01

wire S_not;
wire nand_A;
wire nand_B;

not1 not_s( .in1(S), 
            .out(S_not));

nand2 nand_outA(.in1(Inp), 
                .in2(S_not), 
                .out(nand_A));

nand2 nand_outB(.in1(Inp), 
                .in2(S), 
                .out(nand_B));

not1 not_outA(  .in1(nand_A), 
                .out(OutA));

not1 not_outB(  .in1(nand_B),
                .out(OutB));

//NOTE: Using not1 instead of ~ operator just for
//      purpose of this assignment.
endmodule