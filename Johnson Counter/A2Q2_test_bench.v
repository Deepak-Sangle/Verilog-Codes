`timescale 1ns/1ps
`include "A2Q2_johnson_ctr.v"

module test_bench ();
    reg clk;
    reg rstn;
    wire [7:0] out;
    johnson_ctr counter(clk, rstn, out);
    always #5 clk = ~clk ;
    initial begin
        $dumpfile("main_tb.vcd");
        $dumpvars(0, test_bench);
        clk <= 0;
        rstn <= 0;
        #10;
        // $display("T = %0tps     out = %b (Initialization)", $time, out);
        rstn <= 1;
        for(integer i=0;i<17;i=i+1 ) begin
            #10;
            $display("T = %0tps     out = %b", $time, out);
        end
        $finish;
    end
endmodule
