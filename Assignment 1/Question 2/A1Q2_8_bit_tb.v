`include "A1Q2_8_bit_comparator.v"
`timescale 1ns/1ps

module top_module();

      reg [7:0] a,b;
      wire [7:0] l,g,e;
      comp_8bit full(a[7:0],b[7:0],l[7:0],g[7:0],e[7:0]);

      initial begin
            $dumpfile("8_bit_comparator.vcd");
            $dumpvars(0, top_module);
            
            a=87; b=88;
            #5;
            a=8'b11111111; b=8'b11111111;
            #5;
            a=125; b=32;
            #5;
            a=8'b01010101; b=8'b10101010;
            #5;
            a=66; b=66;
            #5;
            a=69; b=96;
            #5;
            a=0; b=8'b00000000;
            #5;
            a=8'b00001010; b=8'b00001010;
            #5;
            a=8'b00000000; b=8'b00000000;
            #5;
            a=0; b=8'hfa;
            #5;
             a=87; b=87;
            #5;
             a=87; b=254;
            #5;
             a=67; b=88;
            #5;
             a=15; b=135;
            #5;
             a=65; b=88;
            #5;
      end
endmodule