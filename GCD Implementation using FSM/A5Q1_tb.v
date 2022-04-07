`include "A5Q1_gcd.v"
module gcd_tb;
reg [7:0] x,y;
wire[7:0] o;
initial begin
    $dumpfile("gcd_tb.vcd");
    $dumpvars(0,gcd_tb);
end
gcd c(.inX(x),.inY(y),.out(o));

initial begin
    x=8'd60;y=8'd65;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd160;y=8'd203;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd58;y=8'd120;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd61;y=8'd244;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd124;y=8'd48;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd63;y=8'd45;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd79;y=8'd165;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd88;y=8'd77;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd56;y=8'd80;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd22;y=8'd22;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd84;y=8'd224;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd26;y=8'd49;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd109;y=8'd73;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd132;y=8'd70;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
    x=8'd54;y=8'd13;
    #5
    $display("x = %b , y = %b  , gcd = %b", x,y,o);
end

endmodule
