module demux1to8_4bit (
    input  wire [3:0] D,
    input  wire A2,
    input  wire A1,
    input  wire A0,
    output wire [3:0] Q0,
    output wire [3:0] Q1,
    output wire [3:0] Q2,
    output wire [3:0] Q3,
    output wire [3:0] Q4,
    output wire [3:0] Q5,
    output wire [3:0] Q6,
    output wire [3:0] Q7
);

assign Q0 = D & ~A2 & ~A1 & ~A0;
assign Q1 = D & ~A2 & ~A1 &  A0;
assign Q2 = D & ~A2 &  A1 & ~A0;
assign Q3 = D & ~A2 &  A1 &  A0;
assign Q4 = D &  A2 & ~A1 & ~A0;
assign Q5 = D &  A2 & ~A1 &  A0;
assign Q6 = D &  A2 &  A1 & ~A0;
assign Q7 = D &  A2 &  A1 &  A0;

endmodule
