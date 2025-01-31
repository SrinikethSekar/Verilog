module Or_tb();
  reg a,b;
  wire c;

  Or or1(.x(x),.y(y),.z(z));

  initial 
    begin
      a=0; b=0; #10;
      a=0; b=1; #10;
      a=1; b=0; #10;
      a=1; b=1; #10;
    end
endmodule
