module NAND_1(output Y1, input A1, B1);
    wire Yd1;
    and(Yd1, A1, B1);
    not(Y1, Yd1);
endmodule

module NAND_2(output Y2, input A2, B2);
    wire Yd2;
    and(Yd2, A2, B2);
    not(Y2, Yd2);
endmodule

module NAND_3(output Y3, input A3, B3);
    wire Yd3;
    and(Yd3, A3, B3);
    not(Y3, Yd3);
endmodule

module NAND_4(output Y4, input A4, B4);
    wire Yd4;
    and(Yd4, A4, B4);
    not(Y4, Yd4);
endmodule