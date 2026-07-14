module pass_amateur
(
    input[7:0] g,
    input[7:0] p,
    output y
);

assign y= (g==p) ? 1:0 ;

endmodule