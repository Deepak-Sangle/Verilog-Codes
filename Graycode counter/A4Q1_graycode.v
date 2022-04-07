module graycode(
  input x,
  output reg z
);

parameter S0=3'b000,S1=3'b001,S2=3'b011,S3=3'b010, S4=3'b110,S5=3'b111,S6=3'b101,S7=3'b100;
reg [2:0] NS;
reg [2:0] PS=3'b000;
//combinational state assignment block  
always @ (posedge x)
  begin

    //Displaying the output and the counter values
    if(PS==S0) begin $display(0, ,0, ,$time); end
    else if(PS==S1) begin $display(1, ,0, ,$time); end
    else if(PS==S2) begin $display(2, ,0, ,$time); end
    else if(PS==S3) begin $display(3, ,0, ,$time); end
    else if(PS==S4) begin $display(4, ,0, ,$time); end
    else if(PS==S5) begin $display(5, ,0, ,$time); end
    else if(PS==S6) begin $display(6, ,0, ,$time); end
    else if(PS==S7 && x) begin $display(7, ,1, ,$time); end
    else begin $display(7, ,0, ,$time); end
    
    
    //Next State Logic
    case(PS)
        S0 :begin NS = x ? S1 : S0 ;
        end
        S1 :begin NS = x ? S2 : S1 ;
        end
        S2 :begin NS = x ? S3 : S2 ;
        end
        S3 :begin NS = x ? S4 : S3 ;
        end
        S4 :begin NS = x ? S5 : S4 ;
        end
        S5 :begin NS = x ? S6 : S5 ;
        end
        S6 :begin NS = x ? S7 : S6 ;
        end
        S7 :begin NS = x ? S0 : S7 ;
        end
    endcase
    
    //Assignment Logic for output and next state    
    PS=NS;
    z=(PS==S7 && x) ? 1'b1:1'b0;
    
  end

endmodule