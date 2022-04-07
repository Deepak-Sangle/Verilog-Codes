`include "A4Q2_1_bit_adder.v"
`timescale 1ns/1ps

module add_8bit(input[7:0] a, input[7:0] b, input opcode, output wire[7:0] s, output wire is_overflow);

wire[7:0] cout;   //works as both intermediate carry and final carry out

add_1bit s0(a[0],b[0],opcode,opcode,s[0],cout[0]);
add_1bit s1(a[1],b[1],opcode,cout[0],s[1],cout[1]);
add_1bit s2(a[2],b[2],opcode,cout[1],s[2],cout[2]);
add_1bit s3(a[3],b[3],opcode,cout[2],s[3],cout[3]);
add_1bit s4(a[4],b[4],opcode,cout[3],s[4],cout[4]);
add_1bit s5(a[5],b[5],opcode,cout[4],s[5],cout[5]);
add_1bit s6(a[6],b[6],opcode,cout[5],s[6],cout[6]);
add_1bit s7(a[7],b[7],opcode,cout[6],s[7],cout[7]);

assign is_overflow=(cout[6]^cout[7]);

endmodule



 





