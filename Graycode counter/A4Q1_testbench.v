`include "A4Q1_graycode.v"

module testbench;
    reg clk;
    wire out;
    always #5 clk = ~clk ;
    graycode graycode_counter(clk,out);
    initial begin
        $dumpfile("main.vcd");
        $dumpvars(0, testbench);
        clk <= 0;
        $display();
        $display("Pulse Count", ,"        Output", ,"              Time");
        for(integer i=0;i<32;i=i+1 ) begin
            #5;
        end
        $finish;
    end
    
endmodule