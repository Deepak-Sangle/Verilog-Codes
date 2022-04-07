`timescale 1ns/1ps
module CLA_8bit(A, B, carryIn, carryOut,  Sum);
    input[7:0] A, B;
    input carryIn;
    output carryOut;
    output[7:0] Sum;
    wire[7:0] g, p, C;

    assign g = A & B;
    assign p = A ^ B;
    assign Sum = p ^ C;

    assign C[0] = carryIn;
    assign C[1] = g[0] | (p[0] & C[0]);
    assign C[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & C[0]);
    assign C[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & C[0]);
    assign C[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) |  (p[3] & p[2] & p[1] & p[0] & C[0]);
    assign C[5] = g[4]|(g[3] &p[4]) | (p[4] &p[3] & g[2]) | (p[4] &p[3] & p[2] & g[1]) | 
            (p[4] &p[3] & p[2] & p[1] & g[0]) | (p[4] & p[3] & p[2] & p[1] & p[0] & C[0]);
    assign C[6] = g[5]|(g[4] & p[5])|(g[3] &p[4] & p[5]) | (p[5]&p[4] &p[3] & g[2]) | 
            (p[5]&p[4] &p[3] & p[2] & g[1]) | (p[5]&p[4] &p[3] & p[2] & p[1] & g[0]) | 
            (p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & C[0]);
    assign C[7] = g[6]|(g[5] & p[6])|(g[4] & p[5] & p[6])|(g[3] &p[4] & p[5] & p[6]) | 
            (p[6]& p[5]&p[4] &p[3] & g[2]) | (p[6]&p[5]&p[4] &p[3] & p[2] & g[1]) |
            (p[6] &p[5]&p[4] &p[3] & p[2] & p[1] & g[0]) | (p[6]&p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & C[0]);
    assign carryOut = g[7]|(g[6]&p[7])|(g[5] & p[6]&p[7])|(g[4] & p[5] & p[6]&p[7])|(g[3] &p[4] & p[5] & 
            p[6]&p[7]) | (p[7]&p[6]& p[5]&p[4] &p[3] & g[2]) | (p[7]&p[6]&p[5]&p[4] &p[3] & p[2] & g[1]) |(p[7]&p[6] &p[5]&p[4] &p[3] & p[2] & p[1] & g[0]) | (p[7]&p[6]&p[5] & p[4] & p[3] & p[2] & p[1] & p[0] & C[0]);
endmodule

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
                  ;
