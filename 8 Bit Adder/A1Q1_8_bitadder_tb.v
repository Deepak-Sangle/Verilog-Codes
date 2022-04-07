`timescale 1ns/1ps
`include "A1Q1_8_bit_adder.v"

module top_module ();
    reg[7:0] A,B;
    reg C;
    wire[7:0] S,C1;
    add_8bit _test(A,B,C,S,C1);
    initial begin
        $dumpfile("8_bitadder_tb.vcd");
        $dumpvars(0, top_module);

        $display("a        b        carry_in    s          carry_out");
        
        A=8'b00000001; B=8'b00000010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b00001010; B=8'b10000010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b00010001; B=8'b00100010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b00100001; B=8'b01000010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b10011001; B=8'b01100010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b00000001; B=8'b11111110; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b00000000; B=8'b11111111; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b11011001; B=8'b00001111; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b01001001; B=8'b11011010; C=1'b1;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b01010101; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=87; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b01010101; B=91; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=212; B=8'b10101010; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=8'b01010101; B=199; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

        A=15; B=84; C=1'b0;
        #5
        $display("%b %b %b           %b   %b",A,B,C,S,C1);

    end
endmodule