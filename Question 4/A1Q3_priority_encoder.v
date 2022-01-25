module priority_encoder8to3(
        input [7:0] in,
        output reg [2:0] out
);

always @(*) begin
        if(in[0]) assign out = 3'b000;
        else if(in[1]) assign out = 3'b001;
        else if(in[2]) assign out = 3'b010;
        else if(in[3]) assign out = 3'b011;
        else if(in[4]) assign out = 3'b100;
        else if(in[5]) assign out = 3'b101;
        else if(in[6]) assign out = 3'b110;
        else assign out = 3'b111;
end

endmodule

