`include "A3Q1_sequence_detecter.v"

module testbench;
    reg [7:0] in;
    wire [7:0] out;
    
    ins abc(in,out);

    initial begin

    in= 8'b01101010;  
    #5;
    $display("output=%b",out);  
    
    in=8'b10101010;
    #5;
    $display("output=%b",out);
    
    in=8'b00101010;
    #5;
    $display("output=%b",out);
    
    in=8'b10101010;
    #5;
    $display("output=%b",out);
    
    in=8'b10101011;
    #5;
    $display("output=%b",out);
    
    in=8'b10001010;
    #5;
    $display("output=%b",out);
    
    in=8'b11101000;
    #5;
    $display("output=%b",out);
    
    in=8'b11111010;
    #5;
    $display("output=%b",out);
    
    in=8'b10111010;
    #5;
    $display("output=%b",out);
    
    in=8'b10101111;
    #5;
    $display("output=%b",out);
    
    in=8'b10111000;
    #5;
    $display("output=%b",out);
    
    in=8'b10101010;
    #5;
    $display("output=%b",out);
    
    in=8'b00101010;
    #5;
    $display("output=%b",out);
    
    in=8'b01101100;
    #5;
    $display("output=%b",out);
    
    in=8'b00101000;
    #5;
    $display("output=%b",out);
    
    end  
endmodule