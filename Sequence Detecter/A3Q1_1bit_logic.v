module seq_detector(
  input x,
  input [1:0] PS,
  output z,
  output reg[1:0] NS
);

parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;

//combinational state assignment block  
always @ (x or PS)
  begin
    case(PS)
        S0 :begin
         NS = x ? S1 : S0 ;
         end
        S1 :begin NS = x ? S1 : S2 ;
        end
        S2 :begin NS = x ? S3 : S0 ;
        end
        S3 :begin NS = x ? S1 : S2 ;
        end
    endcase
  end

assign z=((PS==S3) && ~x)? 1:0;

endmodule