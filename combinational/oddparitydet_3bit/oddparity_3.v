module oddparity_3bit

(
  input x,y,z,
  output p
);

assign p= x^y^z ;

endmodule