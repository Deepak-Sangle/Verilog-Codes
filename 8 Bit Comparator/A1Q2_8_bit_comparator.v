`include "A1Q2_1_bit_comparator.v"
`timescale 1ns/1ps

module comp_8bit(input [7:0] a,b,output [7:0] l,g,e);

    compare_1_bit x0(a[0],b[0],l[0],g[0],e[0]);
    compare_1_bit x1(a[1],b[1],l[1],g[1],e[1]);
    compare_1_bit x2(a[2],b[2],l[2],g[2],e[2]);
    compare_1_bit x3(a[3],b[3],l[3],g[3],e[3]);
    compare_1_bit x4(a[4],b[4],l[4],g[4],e[4]);
    compare_1_bit x5(a[5],b[5],l[5],g[5],e[5]);
    compare_1_bit x6(a[6],b[6],l[6],g[6],e[6]);
    compare_1_bit x7(a[7],b[7],l[7],g[7],e[7]);

    always @(a or b) begin
        #1;
        if(l[7]==1)
              $display("less=%b greater=%b equal=%b",l[7],g[7],e[7]);
        else if(g[7]==1)
              $display("less=%b greater=%b equal=%b",l[7],g[7],e[7]);
        else if(l[6]==1)
              $display("less=%b greater=%b equal=%b",l[6],g[6],e[6]);
        else if(g[6]==1)
              $display("less=%b greater=%b equal=%b",l[6],g[6],e[6]);
        else if(l[5]==1)
              $display("less=%b greater=%b equal=%b",l[5],g[5],e[5]);
        else if(g[5]==1)
              $display("less=%b greater=%b equal=%b",l[5],g[5],e[5]);  
        else if(l[4]==1)
              $display("less=%b greater=%b equal=%b",l[4],g[4],e[4]);
        else if(g[4]==1)
              $display("less=%b greater=%b equal=%b",l[4],g[4],e[4]);
        else if(l[3]==1)
              $display("less=%b greater=%b equal=%b",l[3],g[3],e[3]);
        else if(g[3]==1)
              $display("less=%b greater=%b equal=%b",l[3],g[3],e[3]);
        else if(l[2]==1)
              $display("less=%b greater=%b equal=%b",l[2],g[2],e[2]);
        else if(g[2]==1)
              $display("less=%b greater=%b equal=%b",l[2],g[2],e[2]);
        else if(l[1]==1)
              $display("less=%b greater=%b equal=%b",l[1],g[1],e[1]);
        else if(g[1]==1)
              $display("less=%b greater=%b equal=%b",l[1],g[1],e[1]);
        else if(l[0]==1)
              $display("less=%b greater=%b equal=%b",l[0],g[0],e[0]);
        else if(g[0]==1)
              $display("less=%b greater=%b equal=%b",l[0],g[0],e[0]);
        else 
              $display("less=%b greater=%b equal=%b",l[0],g[0],e[0]);
    end
endmodule