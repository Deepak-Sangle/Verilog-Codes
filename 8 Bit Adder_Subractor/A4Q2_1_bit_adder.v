`timescale 1ns/1ps

module add_1bit(
    input a,input b,input opcode,input cin,
    output s,output cout
);
    wire s;
    wire cout;
    assign s=a^(b^opcode)^cin;               // (b^opcode)- returns b when opcode is 0, else returns ~b
    assign cout=(a&(b^opcode))|((b^opcode)&cin)|(cin&a);
endmodule