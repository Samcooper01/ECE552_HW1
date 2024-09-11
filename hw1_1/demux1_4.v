module demux1_4 (Inp, S, OutA, OutB, OutC, OutD);
input Inp;
input [1:0] S;
output OutA;
output OutB;
output OutC;
output OutD;

wire nand_AB;
wire nand_CD;
wire nand_AB_out;
wire nand_CD_out;

wire inp_AB;
wire inp_CD;

wire s1_not;

not1 not_s1(   .in1(S[1]),
        .out(s1_not));

//NAND + NOT = AND
nand2 nand_inp_AB(  .in1(s1_not),
                    .in2(Inp),
                    .out(nand_AB_out));
not1 not_AB(   .in1(nand_AB_out),
        .out(inp_AB));

demux1_2 demux_s0(  .Inp(inp_AB), 
                    .S(S[0]), 
                    .OutA(OutA), 
                    .OutB(OutB));


//NAND + NOT = AND
nand2 nand_inp_CD(  .in1(S[1]),
                    .in2(Inp),
                    .out(nand_CD_out));
not1 not_CD(   .in1(nand_CD_out),
        .out(inp_CD));

demux1_2 demux_s1(  .Inp(inp_CD), 
                    .S(S[0]), 
                    .OutA(OutC), 
                    .OutB(OutD));


endmodule