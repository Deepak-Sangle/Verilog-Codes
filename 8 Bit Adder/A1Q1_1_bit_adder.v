`timescale 1ns/1ps

module add_1bit(
    input a,input b,input cin,
    output s,output cout
);
    wire s;
    wire cout;
    assign s=(a^b)^cin;
    assign cout=(a&b)|(b&cin)|(cin&a);

endmodule