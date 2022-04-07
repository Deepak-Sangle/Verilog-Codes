module bit_checker(
    input x,
    input CS,
    output reg NS
);
    parameter S0=1'b0,S1=1'b1;

    always @ (x or CS)
        begin
        case(CS)
            S0 :begin
                NS = x ? S1 : S0 ;
            end
            S1 :begin 
                NS = x ? S0 : S1 ;
            end
        endcase
    end
endmodule