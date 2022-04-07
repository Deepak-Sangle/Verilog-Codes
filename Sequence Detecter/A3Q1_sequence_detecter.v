`include "A3Q1_1bit_logic.v"

module ins(
    input [7:0] in,
    output[7:0] out
);

wire [1:0] state_update [0:7];
seq_detector uu1(in[7],2'b00, out[7], state_update[0]);
seq_detector uu2(in[6],state_update[0], out[6], state_update[1]);
seq_detector uu3(in[5],state_update[1], out[5], state_update[2]);
seq_detector uu4(in[4],state_update[2], out[4], state_update[3]);
seq_detector uu5(in[3],state_update[3], out[3], state_update[4]);
seq_detector uu6(in[2],state_update[4], out[2], state_update[5]);
seq_detector uu7(in[1],state_update[5], out[1], state_update[6]);
seq_detector uu8(in[0],state_update[6], out[0], state_update[7]);

endmodule