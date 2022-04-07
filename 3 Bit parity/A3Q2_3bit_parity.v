`include "A3Q2_1bit_logic.v"

module ins(
    input [2:0] in,
    output y    
);
    wire [2:0] nextState;
    bit_checker bit0(in[2],1'b0,nextState[0]);
    bit_checker bit1(in[1],nextState[0],nextState[1]);
    bit_checker bit2(in[0],nextState[1],y);

endmodule