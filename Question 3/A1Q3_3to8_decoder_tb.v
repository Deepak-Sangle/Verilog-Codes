`include "A1Q3_3to8_decoder.v"
`timescale 1ns/1ps

module test_bench;
    reg a0,a1,a2;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    three_to_eight_decoder d0(a0,a1,a2,y0,y1,y2,y3,y4,y5,y6,y7);
    initial 
    begin
        $dumpfile("main_tb.vcd");
        $dumpvars(0, test_bench);
        $display(" Input               Output         ");
        $display("a2 a1 a0     y7 y6 y5 y4 y3 y2 y1 y0");
        a0=1'b0;
        a1=1'b0;
        a2=1'b0;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b1;
        a1=1'b0;
        a2=1'b0;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b0;
        a1=1'b1;
        a2=1'b0;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b1;
        a1=1'b1;
        a2=1'b0;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b0;
        a1=1'b0;
        a2=1'b1;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b1;
        a1=1'b0;
        a2=1'b1;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b0;
        a1=1'b1;
        a2=1'b1;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        a0=1'b1;
        a1=1'b1;
        a2=1'b1;
        #5;
        $display("%b  %b  %b      %b  %b  %b  %b  %b  %b  %b  %b", a2,a1,a0,y7,y6,y5,y4,y3,y2,y1,y0);
        $finish;
    end

endmodule