module compare_1_bit(a,b,l,g,e);
input a,b;
output reg l,g,e;
always @(a,b) 
begin
    if(a<b)begin
        {l,g,e}=3'b100;
    end
    else if(a>b)begin
        {l,g,e}=3'b010;
    end
    else if(a==b)begin
        {l,g,e}=3'b001;
    end
    else begin
        {l,g,e}=3'b000;
    end
end
endmodule    