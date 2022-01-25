`timescale 1ns/1ps
`include "A1Q3_2to4_decoder.v"

module three_to_eight_decoder(
    input a0,input a1,input a2,
    output y0,output y1,output y2,output y3,output y4,output y5,output y6,output y7
);
    wire not_a2;
    two_to_four_decoder d0(a2,a0,a1,y4,y5,y6,y7);
    not (not_a2, a2);
    two_to_four_decoder d1(not_a2,a0,a1,y0,y1,y2,y3);

endmodule