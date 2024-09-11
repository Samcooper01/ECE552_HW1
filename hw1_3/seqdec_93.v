module seqdec_93 (Inp, Clk, Reset, Out);
input Inp;
input Clk;
input Reset;
output Out;

parameter   IDLE = 4'b0000,
            S1 = 4'b0001,
            S10 = 4'b0010,
            S100 = 4'b0011,
            S1001 = 4'b0100,
            S10010 = 4'b0101,
            S100100 = 4'b0110,
            S1001001 = 4'b0111,
            S10010011 = 4'b1000;

wire [3:0] state;
wire [3:0] next_state;

dff state_ff[3:0](
            .q(state),
            .d(next_state),
            .clk(Clk),
            .rst(Reset)
            );


assign next_state = (state == IDLE) ? 
                 (Inp == 0 ? IDLE : S1) :
                 (state == S1) ? 
                 (Inp == 0 ? S10 : S1) :
                 (state == S10) ? 
                 (Inp == 0 ? S100 : S1) :
                 (state == S100) ? 
                 (Inp == 0 ? IDLE : S1001) :
                 (state == S1001) ? 
                 (Inp == 0 ? S10010 : S1) :
                 (state == S10010) ? 
                 (Inp == 0 ? S100100 : S1) :
                 (state == S100100) ? 
                 (Inp == 0 ? IDLE : S1001001) :
                 (state == S1001001) ? 
                 (Inp == 0 ? S10010 : S10010011) :
                 (state == S10010011) ? 
                 (Inp == 0 ? S10 : S1) :
                 next_state;

assign Out = (state == S10010011) ? 1 : 0;

endmodule