`include "A1Q3_priority_encoder.v"
`timescale 1ns/1ps

module test_bench;
    reg [7:0] in;
    wire [2:0] out;
    priority_encoder8to3 p0(in,out);
    initial 
    begin
        $dumpfile("priority_encoder.vcd");
        $dumpvars(0, test_bench);
        $display("Input      Output");
        in=8'b11000001;
        #5;
        $display("%b   %b", in, out);
        in=8'b10010010;
        #5;
        $display("%b   %b", in, out);
        in=8'b00010100;
        #5;
        $display("%b   %b", in, out);
        in=8'b10011000;
        #5;
        $display("%b   %b", in, out);
        in=8'b10010000;
        #5;
        $display("%b   %b", in, out);
        in=8'b11100000;
        #5;
        $display("%b   %b", in, out);
        in=8'b01000000;
        #5;
        $display("%b   %b", in, out);
        in=8'b10000000;
        #5;
        $display("%b   %b", in, out);
        $finish;
    end

endmodule