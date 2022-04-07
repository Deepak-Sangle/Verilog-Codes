`timescale 1ns/1ps
`include "A4Q2_8_bit_adder.v"

module top_module ();

    reg[7:0] A,B;
    reg OP;
    wire[7:0] S;
    wire OVER;

    add_8bit _test(A,B,OP,S,OVER);
    initial begin
        $dumpfile("8_bitadder_tb.vcd");
        $dumpvars(0, top_module);

        $display("a        b        opcode    Sum          Overflow");
        
        A=0; B=0; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=25; B=59; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=25; B=59; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=120; B=121; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=1; B=2; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=110; B=84; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=5; B=69; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=69; B=105; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=1; B=112; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=0; B=110; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=110; B=0; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=50; B=69; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=45; B=81; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=44; B=44; OP=1; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

        A=0; B=1; OP=0; 
        #5
        if(OVER==1'b0) begin
            $display("%b %b %b         %b     No",A,B,OP,S);
        end
        else begin
            $display("%b %b %b         %b     Yes",A,B,OP,S);
        end

    end
endmodule