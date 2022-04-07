module gcd (
  input [7:0] inX, inY,
  output [7:0] out
);

  reg [7:0] X, Y, out, swap;
  integer done;

  always @(*) begin
    done = 0;
    X = inX; Y = inY;
    while ( !done )
    begin
      if ( X < Y ) begin
        swap = X;
        X = Y;
        Y = swap;
      end
      else if ( Y != 0 )
        X = X - Y;
      else
        done = 1;
    end
  out = X;
  end

endmodule