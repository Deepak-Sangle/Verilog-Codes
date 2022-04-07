`timescale 1ns/1ps
`include "A2Q1_CLA_8bit.v"

module CLA_8bit_top ();
    reg[7:0] A;
    reg[7:0] B;
    reg C;
    wire C_out;
    wire[7:0] S;
    CLA_8bit test(A,B,C,C_out,S);
    initial begin
        $dumpfile("CLA_8bit_top.vcd");
        $dumpvars(0, CLA_8bit_top);

        $display("a        b        c_in        s          carry_out  ");
        
        A=8'b00000001; B=8'b00000010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b00001010; B=8'b10000010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b00010001; B=8'b00100010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b00100001; B=8'b01000010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b10011001; B=8'b01100010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b00000001; B=8'b11111110; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b00000000; B=8'b11111111; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b11011001; B=8'b00001111; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b01001001; B=8'b11011010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b01010101; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=87; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b01010101; B=91; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=212; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=8'b01010101; B=199; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

        A=15; B=84; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C_out);

    end
endmodule