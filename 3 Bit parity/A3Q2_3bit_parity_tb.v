`include "A3Q2_3bit_parity.v"

module testbench;
    reg[2:0] inp;
    wire y;

    ins bit3 (inp,y);
    initial begin
        inp = 3'b000;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b001;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b010;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b011;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b100;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b101;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b110;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
        inp = 3'b111;
        #5;
        if(y==1'b0)
            $display("1");
        else
            $display("0");  
          
    end
endmodule
