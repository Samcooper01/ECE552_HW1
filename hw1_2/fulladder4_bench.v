module fulladder4_bench;
reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] S;
wire Cout;

fulladder4 iDut(.A(A), 
                .B(B), 
                .Cin(Cin),
                .S(S),
                .Cout(Cout));

initial
begin

    A = 3'b000;
    B = 3'b000;
    Cin = 0;
    #10;

    A = 3'b010;
    B = 3'b001;
    Cin = 0;
    #10;

    A = 3'b011;
    B = 3'b011;
    Cin = 0;
    #10;

    A = 4'b1111;
    B = 4'b1111;
    Cin = 1;
    #10;
end

endmodule