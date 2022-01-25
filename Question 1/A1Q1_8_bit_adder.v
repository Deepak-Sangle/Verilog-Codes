`include "A1Q1_1_bit_adder.v"
`timescale 1ns/1ps

module add_8bit(input[7:0] a, input[7:0] b, input c, output[7:0] s, output[7:0] c1);
    
    add_1bit full0(a[0],b[0],c,s[0],c1[0]);
    add_1bit full1(a[1],b[1],c1[0],s[1],c1[1]);
    add_1bit full2(a[2],b[2],c1[1],s[2],c1[2]);
    add_1bit full3(a[3],b[3],c1[2],s[3],c1[3]);
    add_1bit full4(a[4],b[4],c1[3],s[4],c1[4]);
    add_1bit full5(a[5],b[5],c1[4],s[5],c1[5]);
    add_1bit full6(a[6],b[6],c1[5],s[6],c1[6]);
    add_1bit full7(a[7],b[7],c1[6],s[7],c1[7]);

endmodule



