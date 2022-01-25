`timescale 1ns/1ps

module two_to_four_decoder (
    input e, input h0, input h1,
    output wire u0, output wire u1, output wire u2, output wire u3
);
    assign u0 = (e & ~h1 & ~h0);
    assign u1 = (e & ~h1 & h0);
    assign u2 = (e & h1 & ~h0);
    assign u3 = (e & h1 & h0);

endmodule
