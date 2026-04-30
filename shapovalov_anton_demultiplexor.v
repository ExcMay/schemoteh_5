module tb_demux;

reg  [3:0] D;
reg  A2, A1, A0;
wire [3:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7;

demux1to8_4bit uut (
    .D(D),
    .A2(A2),
    .A1(A1),
    .A0(A0),
    .Q0(Q0),
    .Q1(Q1),
    .Q2(Q2),
    .Q3(Q3),
    .Q4(Q4),
    .Q5(Q5),
    .Q6(Q6),
    .Q7(Q7)
);

initial begin
    D = 4'b1010;

    A2=0; A1=0; A0=0; #100;
    A2=0; A1=0; A0=1; #100;
    A2=0; A1=1; A0=0; #100;
    A2=0; A1=1; A0=1; #100;
    A2=1; A1=0; A0=0; #100;
    A2=1; A1=0; A0=1; #100;
    A2=1; A1=1; A0=0; #100;
    A2=1; A1=1; A0=1; #100;

    $stop;
end

endmodule
