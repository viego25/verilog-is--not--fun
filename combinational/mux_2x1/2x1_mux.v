module mux_2x1
(input a,
 input b,
 input x,
 output y );

 assign y= ((a&(~x))|(b&x));

endmodule